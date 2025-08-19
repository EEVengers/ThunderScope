# Check if git is installed and if not, install it
try
{
    git | Out-Null
   "git is installed"
}
catch [System.Management.Automation.CommandNotFoundException]
{
    winget install --id Git.Git --source winget
}

# Check if cmake is installed and if not, install it
try
{
    cmake | Out-Null
   "cmake is installed"
}
catch [System.Management.Automation.CommandNotFoundException]
{
    winget install --accept-package-agreements --accept-source-agreements cmake
}

# Check if .NET 9 SDK is installed and if not, install it
try
{
    if (dotnet --list-sdks | Select-String -Pattern "9." -Quiet) {
        ".NET 9 SDK is installed"
    }
    else {
        winget install Microsoft.DotNet.SDK.9
    }    
}
catch [System.Management.Automation.CommandNotFoundException]
{
    winget install Microsoft.DotNet.SDK.9
}

# Update Path to be able to use what we installed
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User") 

# Check if software repos are cloned and if not, clone them
if (-not(Test-Path ./ts_litex_driver_win)) {
    git clone -b dev https://github.com/EEVengers/ts_litex_driver_win.git
}
if (-not(Test-Path ./libtslitex)) {
    git clone -b dev_updates https://github.com/EEVengers/libtslitex.git
}
if (-not(Test-Path ./TS.NET)) {
    git clone https://github.com/EEVengers/TS.NET.git
}
if (-not(Test-Path ./ngscopeclient)) {
    #Invoke-WebRequest -Uri "https://github.com/ngscopeclient/scopehal-apps/actions/runs/17035557827/artifacts/3786809270" -OutFile "ngscopeclient-windows-portable.zip"
    # This doesn't work when you're not logged into github!!
    # We will be able to pull down something properly once the v0.1 release is out

    # Let's assume there's a zipped windows portable ngscopeclient in the directory for now
    Expand-Archive -Path .\ngscopeclient*.zip -DestinationPath .\ngscopeclient
}

# Check if EWDK is present and if not, download it
if (-not(Test-Path ./build_tools/EWDK.iso)) {
    Write-Host "Downloading EWDK, this will take several minutes"
    mkdir build_tools
    $ProgressPreference = 'SilentlyContinue'
    Invoke-WebRequest -Uri "https://go.microsoft.com/fwlink/?linkid=2324618" -OutFile "build_tools/EWDK.iso"
}

# Make a .bat file to run in the EWDK environment
Set-Location ./build_tools
"@ECHO OFF" | Out-File EWDK_Commands.bat -encoding ascii

# Create and install a test signing certificate
"makecert -r -pe -ss PrivateCertStore -n CN=Contoso.com(Test) -eku 1.3.6.1.5.5.7.3.3 ContosoTest.cer" | Out-File EWDK_Commands.bat -encoding ascii -Append
"certmgr.exe /add ContosoTest.cer /s /r localMachine root /all" | Out-File EWDK_Commands.bat -encoding ascii -Append
"certmgr.exe /add ContosoTest.cer /s /r localMachine trustedPublisher" | Out-File EWDK_Commands.bat -encoding ascii -Append

# This part of the .bat file builds the driver
"ECHO Running Driver Build Script" | Out-File EWDK_Commands.bat -encoding ascii -Append
"cd ..\ts_litex_driver_win" | Out-File EWDK_Commands.bat -encoding ascii -Append
"setlocal" | Out-File EWDK_Commands.bat -encoding ascii -Append
"for /f `"tokens=1`" %%a in ('`"git show -s --format=%%cd --date=format:%%m/%%d/%%Y`"') do SET COMMIT_DATE=%%a" | Out-File EWDK_Commands.bat -encoding ascii -Append
"for /f `"tokens=2`" %%a in ('`"git show -s --format=%%ci`"') do SET COMMIT_TIMESTAMP=%%a" | Out-File EWDK_Commands.bat -encoding ascii -Append
"Set COMMIT_VERSION=%COMMIT_TIMESTAMP::=.%" | Out-File EWDK_Commands.bat -encoding ascii -Append
"msbuild ts_litex_driver.sln /p:Configuration=Release /p:Platform=x64 /p:DriverDate=%COMMIT_DATE% /p:DriverVersion=%COMMIT_VERSION%" | Out-File EWDK_Commands.bat -encoding ascii -Append
"endlocal" | Out-File EWDK_Commands.bat -encoding ascii -Append
"Signtool sign /v /fd sha256 /s PrivateCertStore /n Contoso.com(Test) /t http://timestamp.digicert.com .\x64\Release\thunderscopedrv\thunderscopedrv.cat" | Out-File EWDK_Commands.bat -encoding ascii -Append

# This part of the .bat file builds the library
"ECHO Running Library Build Script" | Out-File EWDK_Commands.bat -encoding ascii -Append
"cd ..\libtslitex" | Out-File EWDK_Commands.bat -encoding ascii -Append
"git fetch --tags --all" | Out-File EWDK_Commands.bat -encoding ascii -Append
"mkdir build" | Out-File EWDK_Commands.bat -encoding ascii -Append
"cd build" | Out-File EWDK_Commands.bat -encoding ascii -Append 
"cmake .." | Out-File EWDK_Commands.bat -encoding ascii -Append 
"cmake --build ." | Out-File EWDK_Commands.bat -encoding ascii -Append 
"exit" | Out-File EWDK_Commands.bat -encoding ascii -Append 

# Mount EWDK to a predictable place, always W: in this case
$EWDK_Path = Join-Path -Path $PWD -ChildPath "EWDK.iso"
$diskImage = Mount-DiskImage -ImagePath $EWDK_Path -NoDriveLetter
$volumeInfo = $diskImage | Get-Volume
mountvol W: $volumeInfo.UniqueId

# Run the .bat file in the EWDK environment
echo "EWDK_Commands.bat" | W:\LaunchBuildEnv.cmd

# Clean up after ourselves, deleting the .bat file and unmounting EWDK
Remove-Item EWDK_Commands.bat
Dismount-DiskImage -DevicePath \\.\W:

#TODO: Delete EWDK

# Run the TS.NET build script
Set-Location ../TS.NET/build-scripts
& '.\TS.NET.Engine (win-x64).ps1'

# Copy the libtslitex DLL into the same directory as the TS.NET executable
Set-Location ../..
Copy-Item .\libtslitex\build\artifacts\libtslitex\tslitex.dll .\TS.NET\builds\win-x64\TS.NET.Engine\0.1.0\tslitex.dll

# Make a ThunderScope.bat file to launch both ngscopeclient and TS.NET
"start /b .\ngscopeclient\ngscopeclient.exe" | Out-File ThunderScope.bat -encoding ascii
"cd .\TS.NET\builds\win-x64\TS.NET.Engine\0.1.0" | Out-File ThunderScope.bat -encoding ascii -Append
"TS.NET.Engine.exe" | Out-File ThunderScope.bat -encoding ascii -Append

# Enable use of test-signed code
Bcdedit.exe -set TESTSIGNING ON

# Ask user to restart their computer for testsigning mode to take effect
Write-Host "Install Complete, Please Restart Your Computer" -ForegroundColor green

# Below is the command to run after restart
#pnputil /add-driver .\ts_litex_driver_win\x64\Release\thunderscopedrv\thunderscopedrv.inf /install
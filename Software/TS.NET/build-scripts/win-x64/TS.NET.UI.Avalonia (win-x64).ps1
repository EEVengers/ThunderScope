New-Variable -Name "projectFolder" -Value (Join-Path (Resolve-Path ..) 'source/TS.NET.UI.Avalonia')
$xml = [Xml] (Get-Content $projectFolder\TS.NET.UI.Avalonia.csproj)
$version = [Version] $xml.Project.PropertyGroup.Version
New-Variable -Name "publishFolder" -Value (Join-Path (Resolve-Path ..) 'builds/win-x64/TS.NET.UI.Avalonia' $version)

# Remove destination folder if exists
if(Test-Path $publishFolder -PathType Container) { 
    rm -r $publishFolder
}

# Publish application
Write-Host "Publishing project..." -ForegroundColor yellow
Write-Host -> $publishFolder -ForegroundColor DarkYellow
dotnet publish $projectFolder/TS.NET.UI.Avalonia.csproj -r win-x64 -c Release --self-contained /p:PublishSingleFile=true /p:PublishTrimmed=true /p:IncludeNativeLibrariesForSelfExtract=true --output $publishFolder
if ($LastExitCode -ne 0) { break }
Write-Host ""

# Remove debug files
rm $publishFolder/*.pdb

# Compress-Archive -Force -Path $publishFolder\* -DestinationPath $publishFolder/../TS.NET.UI.Avalonia_win-x64_v$version.zip

Write-Host Build Complete -ForegroundColor green
Write-Host -> $publishFolder -ForegroundColor DarkYellow
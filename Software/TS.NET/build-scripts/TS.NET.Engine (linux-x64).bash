version=$(cat ../source/TS.NET.UI.Avalonia/TS.NET.UI.Avalonia.csproj | grep -oPm1 "(?<=<Version>)[^<]+")
dotnet publish ../source/TS.NET.Engine/TS.NET.Engine.csproj -r linux-x64 -c Release --self-contained /p:PublishSingleFile=true /p:PublishTrimmed=true /p:IncludeNativeLibrariesForSelfExtract=true --output ../builds/linux-x64/TS.NET.Engine/$version

# Run from PowerShell on your Windows laptop after installing the prerequisites.
$ErrorActionPreference = 'Stop'
Push-Location $PSScriptRoot
try {
    if (Test-Path -LiteralPath 'app') {
        throw 'The app folder already exists. Setup stops to protect your existing work.'
    }
    dotnet new maui -n QuoteCraftMaui -o app
    if ($LASTEXITCODE -ne 0) { throw 'Official project generation failed. Check the error above.' }
    Copy-Item -LiteralPath 'source/MainPage.xaml' -Destination 'app/MainPage.xaml' -Force
Copy-Item -LiteralPath 'source/MainPage.xaml.cs' -Destination 'app/MainPage.xaml.cs' -Force
    Write-Host 'Starter project created in the app folder. See README.md for how to run it.'
} finally {
    Pop-Location
}

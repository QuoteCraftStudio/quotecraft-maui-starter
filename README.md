# QuoteCraft maui starter

A Hello World source starter for learning app development. It does not create quotes, invoices or APKs yet.

## Setup on Windows

Install a supported Visual Studio version with the .NET MAUI development workload. This is the supported successor to Xamarin. Use the current supported .NET SDK and MAUI workload.

Open this folder in VS Code, open a PowerShell terminal, and run:

```powershell
.\setup.ps1
```

If your computer blocks PowerShell scripts, do not change its security settings just for this project. Run the generation command below in a terminal, then copy the supplied files manually as listed:

```text
dotnet new maui -n QuoteCraftMaui -o app
```

- Copy `source/MainPage.xaml` to `app/MainPage.xaml`.
- Copy `source/MainPage.xaml.cs` to `app/MainPage.xaml.cs`.

The setup script uses the official project generator to create current platform files and compatible dependencies in `app/`, then adds the supplied Hello World screen. Internet access is required. It stops if `app/` already exists. If generation fails, inspect the incomplete folder before deciding whether to move it aside and retry.

## Run

```text
Open app/QuoteCraftMaui.csproj in Visual Studio, choose Windows Machine or an Android device, then click Run.
```

## GitHub

Commit this starter first. After successful setup, commit the generated `app/` project files and dependency lockfiles too. Generated build output, dependency caches, credentials and signing keys should stay out of GitHub.

## Verification

The supplied source files and archive have been checked structurally. The official generators and app builds have not been run here because the required SDKs and package downloads are unavailable in this environment. This is a setup-ready source starter, not a fully generated or build-tested app.

Official documentation: https://learn.microsoft.com/en-us/dotnet/maui/get-started/installation

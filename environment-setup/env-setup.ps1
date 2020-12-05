#Requires -RunAsAdministrator

Write-Host "*********************************" -ForegroundColor Cyan
Write-Host "Installing Chocolatey..." -ForegroundColor Cyan
Write-Host "*********************************" -ForegroundColor Cyan

Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

Write-Host "Enabling global confirmation for Chocolatey..." -ForegroundColor Cyan

choco feature enable -n allowGlobalConfirmation

Write-Host "*********************************" -ForegroundColor Cyan
Write-Host "Installing .NET Framework..." -ForegroundColor Cyan
Write-Host "*********************************" -ForegroundColor Cyan

choco install dotnetfx

Write-Host "*********************************" -ForegroundColor Cyan
Write-Host "Installing .NET Core SDK..." -ForegroundColor Cyan
Write-Host "*********************************" -ForegroundColor Cyan

choco install dotnetcore-sdk

Write-Host "*********************************" -ForegroundColor Cyan
Write-Host "Installing .NET Core Runtime..." -ForegroundColor Cyan
Write-Host "*********************************" -ForegroundColor Cyan

choco install dotnetcore-runtime

Write-Host "*********************************" -ForegroundColor Cyan
Write-Host "Installing NodeJS..." -ForegroundColor Cyan
Write-Host "*********************************" -ForegroundColor Cyan

choco install nodejs.install

Write-Host "*********************************" -ForegroundColor Cyan
Write-Host "Installing VS Code..." -ForegroundColor Cyan
Write-Host "*********************************" -ForegroundColor Cyan

choco install vscode

Write-Host "Installing VS Code Extensions..." -ForegroundColor Cyan

$vsExtensions = 
"eamodio.gitlens", 
"eriklynd.json-tools", 
"esbenp.prettier-vscode", 
"ms-azure-devops.azure-pipelines", 
"ms-azuretools.vscode-azureappservice", 
"ms-azuretools.vscode-azurefunctions", 
"ms-azuretools.vscode-azureresourcegroups", 
"ms-azuretools.vscode-azurestorage", 
"ms-azuretools.vscode-azurevirtualmachines", 
"ms-azuretools.vscode-cosmosdb", 
"ms-azuretools.vscode-docker", 
"ms-dotnettools.csharp", 
"ms-dotnettools.vscode-dotnet-runtime", 
"ms-mssql.mssql", 
"ms-vscode-remote.remote-containers", 
"ms-vscode-remote.remote-ssh", 
"ms-vscode-remote.remote-ssh-edit", 
"ms-vscode-remote.remote-wsl", 
"ms-vscode-remote.vscode-remote-extensionpack", 
"ms-vscode.azure-account", 
"ms-vscode.azurecli", 
"ms-vscode.powershell", 
"ms-vscode.vscode-node-azure-pack", 
"ms-vsts.team", 
"msazurermtools.azurerm-vscode-tools", 
"richie5um2.vscode-sort-json", 
"tsqllint.tsqllint", 
"vscode-icons-team.vscode-icons", 
"zhuangtongfa.material-theme"

$vsExtensions |% { code --install-extension $_ --force }

Write-Host "*********************************" -ForegroundColor Cyan
Write-Host "Installing Notepad++..." -ForegroundColor Cyan
Write-Host "*********************************" -ForegroundColor Cyan

choco install notepadplusplus

Write-Host "*********************************" -ForegroundColor Cyan
Write-Host "Installing Git..." -ForegroundColor Cyan
Write-Host "*********************************" -ForegroundColor Cyan

choco install git.install

Write-Host "*********************************" -ForegroundColor Cyan
Write-Host "Installing Python3..." -ForegroundColor Cyan
Write-Host "*********************************" -ForegroundColor Cyan

choco install python3

Write-Host "*********************************" -ForegroundColor Cyan
Write-Host "Installing 7zip..." -ForegroundColor Cyan
Write-Host "*********************************" -ForegroundColor Cyan

choco install 7zip

Write-Host "*********************************" -ForegroundColor Cyan
Write-Host "Installing Docker Desktop..." -ForegroundColor Cyan
Write-Host "*********************************" -ForegroundColor Cyan

choco install docker-desktop

Write-Host "*********************************" -ForegroundColor Cyan
Write-Host "Installing SSMS..." -ForegroundColor Cyan
Write-Host "*********************************" -ForegroundColor Cyan

choco install sql-server-management-studio

Write-Host "*********************************" -ForegroundColor Cyan
Write-Host "Installing Az CLI..." -ForegroundColor Cyan
Write-Host "*********************************" -ForegroundColor Cyan

choco install azure-cli

Write-Host "*********************************" -ForegroundColor Cyan
Write-Host "Installing Visual Studio 2017..." -ForegroundColor Cyan
Write-Host "*********************************" -ForegroundColor Cyan

choco install visualstudio2017professional `
--package-parameters " `
--add Microsoft.VisualStudio.Workload.Azure;includeRecommended;includeOptional; `
--add Microsoft.VisualStudio.Workload.Data;includeRecommended;includeOptional; `
--add Microsoft.VisualStudio.Workload.DataScience;includeRecommended;includeOptional; `
--add Microsoft.VisualStudio.Workload.ManagedDesktop;includeRecommended;includeOptional; `
--add Microsoft.VisualStudio.Workload.NetCoreTools;includeRecommended;includeOptional; `
--add Microsoft.VisualStudio.Workload.NetWeb;includeRecommended;includeOptional; `
--add Microsoft.VisualStudio.Workload.Node;includeRecommended;includeOptional; `
--add Microsoft.VisualStudio.Workload.Python;includeRecommended;includeOptional;
"

Write-Host "*********************************" -ForegroundColor Cyan
Write-Host "Installing Visual Studio 2019..." -ForegroundColor Cyan
Write-Host "*********************************" -ForegroundColor Cyan

choco install visualstudio2019professional `
--package-parameters " `
--add Microsoft.VisualStudio.Workload.Azure;includeRecommended;includeOptional; `
--add Microsoft.VisualStudio.Workload.Data;includeRecommended;includeOptional; `
--add Microsoft.VisualStudio.Workload.DataScience;includeRecommended;includeOptional; `
--add Microsoft.VisualStudio.Workload.ManagedDesktop;includeRecommended;includeOptional; `
--add Microsoft.VisualStudio.Workload.NetCoreTools;includeRecommended;includeOptional; `
--add Microsoft.VisualStudio.Workload.NetWeb;includeRecommended;includeOptional; `
--add Microsoft.VisualStudio.Workload.Node;includeRecommended;includeOptional; `
--add Microsoft.VisualStudio.Workload.Python;includeRecommended;includeOptional; 
"

Write-Host "*********************************" -ForegroundColor Cyan
Write-Host "Installing Azure Storage Explorer..." -ForegroundColor Cyan
Write-Host "*********************************" -ForegroundColor Cyan

choco install microsoftazurestorageexplorer

Write-Host "*********************************" -ForegroundColor Cyan
Write-Host "Installing Azure Data Studio..." -ForegroundColor Cyan
Write-Host "*********************************" -ForegroundColor Cyan

choco install azure-data-studio

Write-Host "*********************************" -ForegroundColor Cyan
Write-Host "Installing Azure Functions Core Tools..." -ForegroundColor Cyan
Write-Host "*********************************" -ForegroundColor Cyan

choco install azure-functions-core-tools-3 --params="'/x64:true'"

Write-Host "*********************************" -ForegroundColor Cyan
Write-Host "Updating Powershell Core Console..." -ForegroundColor Cyan
Write-Host "*********************************" -ForegroundColor Cyan

Install-Module posh-git -Scope CurrentUser -Force -SkipPublisherCheck
Install-Module oh-my-posh -Scope CurrentUser -Force -SkipPublisherCheck

Install-Module -Name PSReadLine -AllowPrerelease -Scope CurrentUser -Force -SkipPublisherCheck

$psProfileContent = @'
Import-Module posh-git
Import-Module oh-my-posh
Set-Theme Paradox
'@

$psProfileContent = ($psProfileContent -split "\r?\n|\r")

$psProfileContent |% {if (!(Select-String -Path $PROFILE -pattern $_ -SimpleMatch)){Add-Content $PROFILE -Value $_}}

Write-Host "*********************************" -ForegroundColor Cyan
Write-Host "Installing Cascadia Code PL Font..." -ForegroundColor Cyan
Write-Host "*********************************" -ForegroundColor Cyan

choco install cascadiacodepl

Write-Host "*********************************" -ForegroundColor Cyan
Write-Host "Installing Windows Terminal..." -ForegroundColor Cyan
Write-Host "*********************************" -ForegroundColor Cyan

choco install microsoft-windows-terminal

$terminalSettings = gc $env:LOCALAPPDATA\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json | ConvertFrom-Json

$terminalDefault = @'
{
  "fontFace": "Cascadia Code PL",
  "cursorColor": "#FFFFFD"
}
'@

$terminalSettings.profiles.defaults = ($terminalDefault | ConvertFrom-Json)
$terminalSettings = $terminalSettings[1] | ConvertTo-Json -Depth 10

Set-Content $env:LOCALAPPDATA\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json -Value $terminalSettings

Write-Host "*********************************" -ForegroundColor Cyan
Write-Host "Installing Terraform..." -ForegroundColor Cyan
Write-Host "*********************************" -ForegroundColor Cyan

choco install terraform

Write-Host "*********************************" -ForegroundColor Cyan
Write-Host "Installing Pulumi..." -ForegroundColor Cyan
Write-Host "*********************************" -ForegroundColor Cyan

choco install pulumi

Write-Host -NoNewLine "Press any key to continue..." -ForegroundColor Cyan;
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown");
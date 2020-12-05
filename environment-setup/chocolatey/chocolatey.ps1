Write-Host "Downloading Chocolatey..." -ForegroundColor Cyan

Set-ExecutionPolicy Bypass -Scope Process -Force
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

Write-Host "Enabling global confirmation for Chocolatey..." -ForegroundColor Cyan

choco feature enable -n allowGlobalConfirmation
choco feature enable -n exitOnRebootDetected
choco feature enable -n usePackageExitCodes
choco feature enable -n failOnStandardError
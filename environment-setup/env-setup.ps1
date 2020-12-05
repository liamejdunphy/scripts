#Requires -RunAsAdministrator

Import-Module .\functions.ps1

Invoke-Scripts "chocolatey";
Invoke-Scripts "common";
Invoke-Scripts "frameworks";
Invoke-Scripts "version-control";
Invoke-Scripts "dev-ops";
Invoke-Scripts "software";

Write-Host -NoNewLine "Press any key to continue..." -ForegroundColor Cyan;
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown");
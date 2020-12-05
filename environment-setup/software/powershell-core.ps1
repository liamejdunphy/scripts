choco install powershell-core `
--install-arguments='"ADD_EXPLORER_CONTEXT_MENU_OPENPOWERSHELL=1 ENABLE_PSREMOTING=1"' `
--packageparameters '"/CleanUpPath"'

Install-Module posh-git -Scope CurrentUser -Force -SkipPublisherCheck
Install-Module oh-my-posh -Scope CurrentUser -Force -SkipPublisherCheck

Install-Module -Name PSReadLine -AllowPrerelease -Scope CurrentUser -Force -SkipPublisherCheck

$psProfileContent = @'
Import-Module posh-git
Import-Module oh-my-posh
Set-Theme Paradox
'@

$psProfileContent = ($psProfileContent -split "\r?\n|\r")

$psProfileContent |ForEach-Object {if (!(Select-String -Path $PROFILE -pattern $_ -SimpleMatch)){Add-Content $PROFILE -Value $_}}
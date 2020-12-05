function Invoke-Scripts
($folder) {
    $files = Get-ChildItem $PSScriptRoot\$folder\

    $files | ForEach-Object {
        . $_.FullName
        if ($LASTEXITCODE -ne 0){
            Write-Host -NoNewLine "Exit code indicates failure. Check above logs to determine appropriate action. If non-fatal, press any key to continue." -ForegroundColor Red;
            $null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown");
        }
    }
}
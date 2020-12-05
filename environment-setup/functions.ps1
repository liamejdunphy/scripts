function Invoke-Scripts
($folder) {
    $files = Get-ChildItem $PSScriptRoot\$folder\

    $files | ForEach-Object {
        . $_.FullName
    }
}
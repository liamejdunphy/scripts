choco install microsoft-windows-terminal

$terminalSettings = Get-Content $env:LOCALAPPDATA\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json | ConvertFrom-Json

$terminalDefault = @'
{
  "fontFace": "Cascadia Code PL",
  "cursorColor": "#FFFFFD"
}
'@

$terminalSettings.profiles.defaults = ($terminalDefault | ConvertFrom-Json)
$terminalSettings = $terminalSettings[1] | ConvertTo-Json -Depth 10

Set-Content $env:LOCALAPPDATA\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json -Value $terminalSettings
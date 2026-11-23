Write-Host "Paste the text. When finished, press Enter, then Ctrl+Z, and Enter again:"
$text = [Console]::In.ReadToEnd()
$result = ($text -replace '^[\r\n]+', '') -replace '[\r\n]+$', ''
$result = $result -replace '[\r\n]+', ' '
Write-Host ""
Write-Host $result
Set-Clipboard -Value $result
Write-Host ""
Write-Host "Text copied to the clipboard!"

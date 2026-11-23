Write-Host "Cole o texto. Ao terminar, pressione Enter, depois Ctrl+Z e Enter novamente:"
$texto = [Console]::In.ReadToEnd()
$resultado = ($texto -replace '^[\r\n]+', '') -replace '[\r\n]+$', ''
$resultado = $resultado -replace '[\r\n]+', ' '
Write-Host ""
Write-Host $resultado
<#
  Provided as an example by Serge Zuidinga. Geestelijk vader is Arjen Snijders :)
#>

Function Wheelie {
  $Wheel = "-", "\", "|", "/"
  $Counter = 0

  While($Counter -lt 200) {
    Write-Host "`r"  -NoNewline
    Write-Host $Wheel[$Counter % $Wheel.Length] -NoNewline
    $Counter++
    Start-Sleep -m 500
  }
}

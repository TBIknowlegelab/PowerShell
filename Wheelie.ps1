<#
  Provided as a courtesy by Arjan Snijders
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
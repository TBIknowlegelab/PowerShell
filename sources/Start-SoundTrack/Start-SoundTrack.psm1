<#
.Synopsis
  A PowerShell Soundtrack Player
.DESCRIPTION
  A PowerShell Soundtrack Player that that plays a sound track you specify
.PARAMETER TrackName
  The name of the track you want to play
.EXAMPLE
  Start-SoundTrack -TrackName 'Super Mario'
.EXAMPLE
  Start-SoundTrack -TrackName 'Beverly Hills Cop', 'Imperial March'
.ROLE
  Act as an example
.FUNCTIONALITY
  Provided as an example during the PowerShell for the IT Professional Workshop
#>

Function Start-SoundTrack {
    [CmdletBinding()]

    Param(
        [ValidateSet("Beverly Hills Cop", "Close Encounters of the Third Kind", "Imperial March", "Mission Impossible", "Super Mario")][string[]]$TrackName = "$(Throw 'Provide one or more valid track names')"
    )

    ForEach-Object -InputObject $TrackName -Process {
        Switch($PSItem) {
            "Beverly Hills Cop" {
                [console]::beep(659,460)
                [console]::beep(784,340)
                [console]::beep(659,230)
                [console]::beep(659,110)
                [console]::beep(880,230)
                [console]::beep(659,230)
                [console]::beep(587,230)
                [console]::beep(659,460)
                [console]::beep(988,340)
                [console]::beep(659,230)
                [console]::beep(659,110)
                [console]::beep(1047,230)
                [console]::beep(988,230)
                [console]::beep(784,230)
                [console]::beep(659,230)
                [console]::beep(988,230)
                [console]::beep(1318,230)
                [console]::beep(659,110)
                [console]::beep(587,230)
                [console]::beep(587,110)
                [console]::beep(494,230)
                [console]::beep(740,230)
                [console]::beep(659,700)
            }
            "Close Encounters of the Third Kind" {
                [console]::beep(900,400)
                [console]::beep(1000,400)
                [console]::beep(800,400)
                [console]::beep(400,400)
                [console]::beep(600,1600)
            }
            "Imperial March" {
                [console]::beep(440,500)
                [console]::beep(440,500)
                [console]::beep(440,500)
                [console]::beep(349,350)
                [console]::beep(523,150)
                [console]::beep(440,500)
                [console]::beep(349,350)
                [console]::beep(523,150)
                [console]::beep(440,1000)
                [console]::beep(659,500)
                [console]::beep(659,500)
                [console]::beep(659,500)
                [console]::beep(698,350)
                [console]::beep(523,150)
                [console]::beep(415,500)
                [console]::beep(349,350)
                [console]::beep(523,150)
                [console]::beep(440,1000)            }
            "Mission Impossible" {
                [console]::beep(784,150)
                Start-Sleep -m  300
                [console]::beep(784,150)
                Start-Sleep -m  300
                [console]::beep(932,150)
                Start-Sleep -m  150
                [console]::beep(1047,150)
                Start-Sleep -m  150
                [console]::beep(784,150)
                Start-Sleep -m  300
                [console]::beep(784,150)
                Start-Sleep -m  300
                [console]::beep(699,150)
                Start-Sleep -m  150
                [console]::beep(740,150)
                Start-Sleep -m  150
                [console]::beep(784,150)
                Start-Sleep -m  300
                [console]::beep(784,150)
                Start-Sleep -m  300
                [console]::beep(932,150)
                Start-Sleep -m  150
                [console]::beep(1047,150)
                Start-Sleep -m  150
                [console]::beep(784,150)
                Start-Sleep -m  300
                [console]::beep(784,150)
                Start-Sleep -m  300
                [console]::beep(699,150)
                Start-Sleep -m  150
                [console]::beep(740,150)
                Start-Sleep -m  150
                [console]::beep(932,150)
                [console]::beep(784,150)
                [console]::beep(587,1200)
                Start-Sleep -m  75
                [console]::beep(932,150)
                [console]::beep(784,150)
                [console]::beep(554,1200)
                Start-Sleep -m  75
                [console]::beep(932,150)
                [console]::beep(784,150)
                [console]::beep(523,1200)
                Start-Sleep -m  150
                [console]::beep(466,150)
                [console]::beep(523,150)            }
            "Super Mario" {
                [console]::beep(659,125)
                [console]::beep(659,125)
                Start-Sleep -m 125
                [console]::beep(659,125)
                Start-Sleep -m 167
                [console]::beep(523,125)
                [console]::beep(659,125)
                Start-Sleep -m 125
                [console]::beep(784,125)
                Start-Sleep -m 375
                [console]::beep(392,125)
                Start-Sleep -m 375
                [console]::beep(523,125)
                Start-Sleep -m 250
                [console]::beep(392,125)
                Start-Sleep -m 250
                [console]::beep(330,125)
                Start-Sleep -m 250
                [console]::beep(440,125)
                Start-Sleep -m 125
                [console]::beep(494,125)
                Start-Sleep -m 125
                [console]::beep(466,125)
                Start-Sleep -m 42
                [console]::beep(440,125)
                Start-Sleep -m 125
                [console]::beep(392,125)
                Start-Sleep -m 125
                [console]::beep(659,125)
                Start-Sleep -m 125
                [console]::beep(784,125)
                Start-Sleep -m 125
                [console]::beep(880,125)
                Start-Sleep -m 125
                [console]::beep(698,125)
                [console]::beep(784,125)
                Start-Sleep -m 125
                [console]::beep(659,125)
                Start-Sleep -m 125
                [console]::beep(523,125)
                Start-Sleep -m 125
                [console]::beep(587,125)
                [console]::beep(494,125)
                Start-Sleep -m 125
                [console]::beep(523,125)
                Start-Sleep -m 250
                [console]::beep(392,125)
                Start-Sleep -m 250
                [console]::beep(330,125)
                Start-Sleep -m 250
                [console]::beep(440,125)
                Start-Sleep -m 125
                [console]::beep(494,125)
                Start-Sleep -m 125
                [console]::beep(466,125)
                Start-Sleep -m 42
                [console]::beep(440,125)
                Start-Sleep -m 125
                [console]::beep(392,125)
                Start-Sleep -m 125
                [console]::beep(659,125)
                Start-Sleep -m 125
                [console]::beep(784,125)
                Start-Sleep -m 125
                [console]::beep(880,125)
                Start-Sleep -m 125
                [console]::beep(698,125)
                [console]::beep(784,125)
                Start-Sleep -m 125
                [console]::beep(659,125)
                Start-Sleep -m 125
                [console]::beep(523,125)
                Start-Sleep -m 125
                [console]::beep(587,125)
                [console]::beep(494,125)
                Start-Sleep -m 375
                [console]::beep(784,125)
                [console]::beep(740,125)
                [console]::beep(698,125)
                Start-Sleep -m 42
                [console]::beep(622,125)
                Start-Sleep -m 125
                [console]::beep(659,125)
                Start-Sleep -m 167
                [console]::beep(415,125)
                [console]::beep(440,125)
                [console]::beep(523,125)
                Start-Sleep -m 125
                [console]::beep(440,125)
                [console]::beep(523,125)
                [console]::beep(587,125)
                Start-Sleep -m 250
                [console]::beep(784,125)
                [console]::beep(740,125)
                [console]::beep(698,125)
                Start-Sleep -m 42
                [console]::beep(622,125)
                Start-Sleep -m 125
                [console]::beep(659,125)
                Start-Sleep -m 167
                [console]::beep(698,125)
                Start-Sleep -m 125
                [console]::beep(698,125)
                [console]::beep(698,125)
                Start-Sleep -m 625
                [console]::beep(784,125)
                [console]::beep(740,125)
                [console]::beep(698,125)
                Start-Sleep -m 42
                [console]::beep(622,125)
                Start-Sleep -m 125
                [console]::beep(659,125)
                Start-Sleep -m 167
                [console]::beep(415,125)
                [console]::beep(440,125)
                [console]::beep(523,125)
                Start-Sleep -m 125
                [console]::beep(440,125)
                [console]::beep(523,125)
                [console]::beep(587,125)
                Start-Sleep -m 250
                [console]::beep(622,125)
                Start-Sleep -m 250
                [console]::beep(587,125)
                Start-Sleep -m 250
                [console]::beep(523,125)
                Start-Sleep -m 1125
                [console]::beep(784,125)
                [console]::beep(740,125)
                [console]::beep(698,125)
                Start-Sleep -m 42
                [console]::beep(622,125)
                Start-Sleep -m 125
                [console]::beep(659,125)
                Start-Sleep -m 167
                [console]::beep(415,125)
                [console]::beep(440,125)
                [console]::beep(523,125)
                Start-Sleep -m 125
                [console]::beep(440,125)
                [console]::beep(523,125)
                [console]::beep(587,125)
                Start-Sleep -m 250
                [console]::beep(784,125)
                [console]::beep(740,125)
                [console]::beep(698,125)
                Start-Sleep -m 42
                [console]::beep(622,125)
                Start-Sleep -m 125
                [console]::beep(659,125)
                Start-Sleep -m 167
                [console]::beep(698,125)
                Start-Sleep -m 125
                [console]::beep(698,125)
                [console]::beep(698,125)
                Start-Sleep -m 625
                [console]::beep(784,125)
                [console]::beep(740,125)
                [console]::beep(698,125)
                Start-Sleep -m 42
                [console]::beep(622,125)
                Start-Sleep -m 125
                [console]::beep(659,125)
                Start-Sleep -m 167
                [console]::beep(415,125)
                [console]::beep(440,125)
                [console]::beep(523,125)
                Start-Sleep -m 125
                [console]::beep(440,125)
                [console]::beep(523,125)
                [console]::beep(587,125)
                Start-Sleep -m 250
                [console]::beep(622,125)
                Start-Sleep -m 250
                [console]::beep(587,125)
                Start-Sleep -m 250
                [console]::beep(523,125)
                Start-Sleep -m 625
            }
        }
    }
}
# SIG # Begin signature block
# MIINDAYJKoZIhvcNAQcCoIIM/TCCDPkCAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB
# gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQUBtGXqLM4j3VA+Pc5yNMv/2c7
# xHCgggpOMIIFFjCCA/6gAwIBAgIQCTQlJln+LgKsg/A993qjVjANBgkqhkiG9w0B
# AQsFADByMQswCQYDVQQGEwJVUzEVMBMGA1UEChMMRGlnaUNlcnQgSW5jMRkwFwYD
# VQQLExB3d3cuZGlnaWNlcnQuY29tMTEwLwYDVQQDEyhEaWdpQ2VydCBTSEEyIEFz
# c3VyZWQgSUQgQ29kZSBTaWduaW5nIENBMB4XDTE5MDEwNzAwMDAwMFoXDTIwMDEx
# NTEyMDAwMFowUzELMAkGA1UEBhMCTkwxEjAQBgNVBAcTCUFtc3RlcmRhbTEXMBUG
# A1UEChMOU2VyZ2UgWnVpZGluZ2ExFzAVBgNVBAMTDlNlcmdlIFp1aWRpbmdhMIIB
# IjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAu/Ui1XM7v4GuHkeATN8vNdcG
# jXUZdFdtkVIN3g7SWSXlNAOk2TBqfITTqUWSQrJkdeb7S4uPdNCDNmKwS7nBqW2m
# D2oU+sFcirNd9fieNkQ2wbxwAEgCm6UdMvZEBMf1q7mkL8+HRT9FxsC88gXQ3x1X
# RxUPxvLzXw+kmF/nM+lu+gyCWHZ980hn5kYfLjMW9ZoU+cnmp4skKmNTkPfifHuR
# UtB8A01Kcg4P7WkXDMoqK7WK/4N8PkFLVJjoaT1XHfsnK8jNw1IFSWMT35swhSpf
# Qh2UOj5uYt/jCx6S82LZ7x8/X8+WA34wBz2y+21phU9kFq9Q//ryxzM7tCXU3QID
# AQABo4IBxTCCAcEwHwYDVR0jBBgwFoAUWsS5eyoKo6XqcQPAYPkt9mV1DlgwHQYD
# VR0OBBYEFG+shRmqeoxXgBl2eaAufOYECsGzMA4GA1UdDwEB/wQEAwIHgDATBgNV
# HSUEDDAKBggrBgEFBQcDAzB3BgNVHR8EcDBuMDWgM6Axhi9odHRwOi8vY3JsMy5k
# aWdpY2VydC5jb20vc2hhMi1hc3N1cmVkLWNzLWcxLmNybDA1oDOgMYYvaHR0cDov
# L2NybDQuZGlnaWNlcnQuY29tL3NoYTItYXNzdXJlZC1jcy1nMS5jcmwwTAYDVR0g
# BEUwQzA3BglghkgBhv1sAwEwKjAoBggrBgEFBQcCARYcaHR0cHM6Ly93d3cuZGln
# aWNlcnQuY29tL0NQUzAIBgZngQwBBAEwgYQGCCsGAQUFBwEBBHgwdjAkBggrBgEF
# BQcwAYYYaHR0cDovL29jc3AuZGlnaWNlcnQuY29tME4GCCsGAQUFBzAChkJodHRw
# Oi8vY2FjZXJ0cy5kaWdpY2VydC5jb20vRGlnaUNlcnRTSEEyQXNzdXJlZElEQ29k
# ZVNpZ25pbmdDQS5jcnQwDAYDVR0TAQH/BAIwADANBgkqhkiG9w0BAQsFAAOCAQEA
# TACGXyDYs5Hy07UulI1q3KgsNupyAVI9whELuzurJzRUOli2NkJXQrakhKxZWCA5
# +MHMQNnL9VRoupe9fMyLd3hqEjx6vs5eroLdoRkDXouje+PJQ4yvshF6nWT0BxnB
# uhNxdNEkZjlhmW2oHdutfU+GwjspNVoHvHMXm1i52LFGcXJ6xhRuVjjJ4M0ijVaE
# pPHwVpEuc6ur/UXhTPtscvMN2T5NhCv8Qb0FxN0UoIN1HZHci4fC1RwQTH04rvO8
# 9S5oPtsGT9TQzZGVtQwqeUJaXBMjJtIbdksNb6Z9uh/wEYRIKG4mlBxJIDMVp1SB
# PZpZvSOR3RwyoApsxzHRpDCCBTAwggQYoAMCAQICEAQJGBtf1btmdVNDtW+VUAgw
# DQYJKoZIhvcNAQELBQAwZTELMAkGA1UEBhMCVVMxFTATBgNVBAoTDERpZ2lDZXJ0
# IEluYzEZMBcGA1UECxMQd3d3LmRpZ2ljZXJ0LmNvbTEkMCIGA1UEAxMbRGlnaUNl
# cnQgQXNzdXJlZCBJRCBSb290IENBMB4XDTEzMTAyMjEyMDAwMFoXDTI4MTAyMjEy
# MDAwMFowcjELMAkGA1UEBhMCVVMxFTATBgNVBAoTDERpZ2lDZXJ0IEluYzEZMBcG
# A1UECxMQd3d3LmRpZ2ljZXJ0LmNvbTExMC8GA1UEAxMoRGlnaUNlcnQgU0hBMiBB
# c3N1cmVkIElEIENvZGUgU2lnbmluZyBDQTCCASIwDQYJKoZIhvcNAQEBBQADggEP
# ADCCAQoCggEBAPjTsxx/DhGvZ3cH0wsxSRnP0PtFmbE620T1f+Wondsy13Hqdp0F
# LreP+pJDwKX5idQ3Gde2qvCchqXYJawOeSg6funRZ9PG+yknx9N7I5TkkSOWkHeC
# +aGEI2YSVDNQdLEoJrskacLCUvIUZ4qJRdQtoaPpiCwgla4cSocI3wz14k1gGL6q
# xLKucDFmM3E+rHCiq85/6XzLkqHlOzEcz+ryCuRXu0q16XTmK/5sy350OTYNkO/k
# tU6kqepqCquE86xnTrXE94zRICUj6whkPlKWwfIPEvTFjg/BougsUfdzvL2FsWKD
# c0GCB+Q4i2pzINAPZHM8np+mM6n9Gd8lk9ECAwEAAaOCAc0wggHJMBIGA1UdEwEB
# /wQIMAYBAf8CAQAwDgYDVR0PAQH/BAQDAgGGMBMGA1UdJQQMMAoGCCsGAQUFBwMD
# MHkGCCsGAQUFBwEBBG0wazAkBggrBgEFBQcwAYYYaHR0cDovL29jc3AuZGlnaWNl
# cnQuY29tMEMGCCsGAQUFBzAChjdodHRwOi8vY2FjZXJ0cy5kaWdpY2VydC5jb20v
# RGlnaUNlcnRBc3N1cmVkSURSb290Q0EuY3J0MIGBBgNVHR8EejB4MDqgOKA2hjRo
# dHRwOi8vY3JsNC5kaWdpY2VydC5jb20vRGlnaUNlcnRBc3N1cmVkSURSb290Q0Eu
# Y3JsMDqgOKA2hjRodHRwOi8vY3JsMy5kaWdpY2VydC5jb20vRGlnaUNlcnRBc3N1
# cmVkSURSb290Q0EuY3JsME8GA1UdIARIMEYwOAYKYIZIAYb9bAACBDAqMCgGCCsG
# AQUFBwIBFhxodHRwczovL3d3dy5kaWdpY2VydC5jb20vQ1BTMAoGCGCGSAGG/WwD
# MB0GA1UdDgQWBBRaxLl7KgqjpepxA8Bg+S32ZXUOWDAfBgNVHSMEGDAWgBRF66Kv
# 9JLLgjEtUYunpyGd823IDzANBgkqhkiG9w0BAQsFAAOCAQEAPuwNWiSz8yLRFcgs
# fCUpdqgdXRwtOhrE7zBh134LYP3DPQ/Er4v97yrfIFU3sOH20ZJ1D1G0bqWOWuJe
# JIFOEKTuP3GOYw4TS63XX0R58zYUBor3nEZOXP+QsRsHDpEV+7qvtVHCjSSuJMbH
# JyqhKSgaOnEoAjwukaPAJRHinBRHoXpoaK+bp1wgXNlxsQyPu6j4xRJon89Ay0BE
# pRPw5mQMJQhCMrI2iiQC/i9yfhzXSUWW6Fkd6fp0ZGuy62ZD2rOwjNXpDd32ASDO
# mTFjPQgaGLOBm0/GkxAG/AeB+ova+YJJ92JuoVP6EpQYhS6SkepobEQysmah5xik
# mmRR7zGCAigwggIkAgEBMIGGMHIxCzAJBgNVBAYTAlVTMRUwEwYDVQQKEwxEaWdp
# Q2VydCBJbmMxGTAXBgNVBAsTEHd3dy5kaWdpY2VydC5jb20xMTAvBgNVBAMTKERp
# Z2lDZXJ0IFNIQTIgQXNzdXJlZCBJRCBDb2RlIFNpZ25pbmcgQ0ECEAk0JSZZ/i4C
# rIPwPfd6o1YwCQYFKw4DAhoFAKB4MBgGCisGAQQBgjcCAQwxCjAIoAKAAKECgAAw
# GQYJKoZIhvcNAQkDMQwGCisGAQQBgjcCAQQwHAYKKwYBBAGCNwIBCzEOMAwGCisG
# AQQBgjcCARUwIwYJKoZIhvcNAQkEMRYEFJCs9boj9ycgG5Y/yjmnVDNCFRnlMA0G
# CSqGSIb3DQEBAQUABIIBAC59fu5Lfm9l/HwFnNdhAnTgAutT8o37fBara+Z7Zq98
# 4NNNakCqVno3JQfFPRqD9n2QhrTjGaStpzlYN3cp/AmVQ3X3w/qblkmqaTr9kQq0
# oDEs/fpbKPNGwUK/gpanIOnoJs5jvlEH16Uk0d6dijEVNpgDno+62Nxg7xr1ntDI
# QWASIj5itfomqn1dvzu9uSMJPQH2kVoC2N04uEdEkOslaAHfHr96rF2ywFXOGEuP
# 2Me2ljElUEe5i/ro6AC3GEDNFbTId1zmw52ndp/5MuHJ0Qp8Juoyy9E028gd36PU
# 41a3tFybYg36FbpqV0CZ4gyhD4fdjekheJudp/h/4lQ=
# SIG # End signature block

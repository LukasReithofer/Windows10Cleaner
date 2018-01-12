Write-Output "setting registry values to disable cortana..."

$path = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search"
    IF(!(Test-Path -Path $path)) {
        New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows" -Name "Windows Search"
    }
    Set-ItemProperty -Path $path -Name "AllowCortana" -Value 0


#Restart Explorer to change it immediately
    Write-Output "[93mrestarting explorer...[0m"
    Stop-Process -name explorer

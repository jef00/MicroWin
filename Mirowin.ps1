Invoke-WebRequest -Uri "https://github.com/CodingWonders/MicroWin/releases/download/latest/MicroWin.zip" -OutFile "$env:TEMP\MicroWinDownload.zip"

Expand-Archive -Path "$env:TEMP\MicroWinDownload.zip" -DestinationPath "$env:TEMP\MicroWinExtract" -Force
Remove-Item "$env:TEMP\MicroWinDownload.zip"

Start-Process -FilePath "$env:TEMP\MicroWinExtract\MicroWin.exe" -Wait
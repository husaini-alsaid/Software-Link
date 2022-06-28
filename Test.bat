@echo Create Download Folder for software installer
mkdir C:\Download
cd C:\Download
@echo This is to install Basic software
@echo Downloading Google Chrome
curl -O https://dl.google.com/tag/s/appguid%3D%7B8A69D345-D564-463C-AFF1-A69D9E530F96%7D%26iid%3D%7B6CE6BB77-0A0A-F90A-CF23-D1F04C238368%7D%26lang%3Den%26browser%3D5%26usagestats%3D0%26appname%3DGoogle%2520Chrome%26needsadmin%3Dtrue%26ap%3Dx64-stable-statsdef_0%26brand%3DGCEA/dl/chrome/install/googlechromestandaloneenterprise64.msi
@echo Installing Google Chrome
msiexec /i C:\Download\googlechromestandaloneenterprise64.msi /qn /norestart
@echo Downloading Zoom
curl -O https://cdn.zoom.us/prod/5.11.1.6602/x64/ZoomInstallerFull.msi
@echo Installing Zoom
msiexec /i C:\Download\ZoomInstallerFull.msi /qn /norestart
@echo Downloading AnyDesk
curl -O https://download.anydesk.com/AnyDesk.msi
@echo Installing AnyDesk
msiexec /i C:\Download\AnyDesk.msi /qn /norestart
@echo Downloading 7zip
curl -O https://d3.7-zip.org/a/7z2200-x64.msi
@echo Installing 7zip
msiexec /i C:\Download\7z2200-x64.msi /qn /norestart
@echo Downloading Teamviewer
curl -O https://download.teamviewer.com/download/TeamViewer_Setup.exe
@echo Installing Teamviewer
C:\Downloads\Teamviewer.exe /S
@echo Download Google Drive
curl -O https://dl.google.com/drive-file-stream/GoogleDrive.exe
@echo Installing Google Drive
C:\Downloads\GoogleDrive.exe --silent
@echo Download Adobe Acrobat Reader
curl -O https://ardownload2.adobe.com/pub/adobe/reader/win/AcrobatDC/2200120142/AcroRdrDC2200120142_en_US.exe
@echo Installing Adobe Acrobat Reader DC
AcroRdrDC2200120142_en_US.exe /sAll /rs /msi EULA_ACCEPT=YES
cd ..
@echo Deleting Downloads Folder
rmdir C:\Download /S /Q
exit
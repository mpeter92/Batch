::This script was written By Michael Smith
::michael.smith@aviva.com
::
::26/05/16
::
::Post install for Aviva Health VMs.
::
::
::
::
::###################################################################



::Remove Product ID
slmgr /upk


:: Install MAK product ID
slmgr /ipk CYTG8-F2MW6-FH7VG-3XD3T-4H4MC


::Update DNS
call \\ieatw1-d\temp\AG_DNS\build\NEWDNS.bat

:: Activate Windows
slmgr /ato


::Install Citrix Receiver
\\ieatw1-d\temp\software\citrixreceiver\citrixreceiver.exe /silent


pause


::Install Adobe Reader
\\ieatw1-d\temp\Software\AdobeReader\AdbeRdr11009_en_US.exe /sPB


::Install Office
"\\ieatw1-d\temp\Software\Office 2010 Standard\setup.exe" /adminfile "\\ieatw1-d\temp\Software\Office 2010 Standard\officetest1.msp"


::Update Proxy
REG ADD "HKEY_CURRENT_USER\software\microsoft\windows\currentversion\internet settings" /v proxyenable /t REG_DWORD  /d 0x1 /f
REG ADD "HKEY_CURRENT_USER\software\microsoft\windows\currentversion\internet settings" /v proxyserver /t REG_SZ /d ftp=bluecoat.iehibdom.com:8080;http=bluecoat.iehibdom.com:8080;https=bluecoat.iehibdom.com:8080 /f
REG ADD "HKCU\software\microsoft\windows\currentversion\internet settings" /v AutoDetect /t REG_DWORD  /d 0 /f


pause


::Run Internet Explorer
"C:\Program Files\Internet Explorer\iexplore.exe"


pause


::install IE11
"\\ieatw1-d\temp\Software\InternetExplorer\IE11-Windows6.1-x64-en.exe" /passive /norestart

pause


:: Create local admin
call \\ieatw1-d\temp\smithm\scripts\imwab.bat


:: Join domain (prompt)
call \\ieatw1-d\temp\smithm\scripts\joindomain.bat






::Reboot
shutdown -r -t 10 -C "Joined your domain, the PC will now reboot. Have a nice day :)."


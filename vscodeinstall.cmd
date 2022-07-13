REM Download Visual Studio Code
curl -L "https://update.code.visualstudio.com/latest/win32-x64-user/stable" --output c:\users\WDAGutilityAccount\Desktop\SANDBOX\vscode.exe
REM install and run Visual Studio Code
c:\users\WDAGutilityAccount\Desktop\SANDBOX\vscode.exe  /verysilent /suppressmsgboxes

REM install Firefox 
REM "c:\users\WDAGutilityAccount\Desktop\SANDBOX\Firefox Installer.exe" /S


REM install Cygwin64
msg "%username%" installing silently cygwin64 for windows!
curl -L "https://www.cygwin.com/setup-x86_64.exe" --output c:\users\WDAGutilityAccount\Desktop\SANDBOX\setup-x86_64.exe
c:\users\WDAGutilityAccount\Desktop\SANDBOX\setup-x86_64.exe --root C:\\Cygwin64 --packages gcc-core,gcc-g++,make,cmake,gdb,binutils,ansible,bash,coreutils,findutils,openssh,openssl,python-pip-wheel,python37 --quiet-mode --upgrade-also --site http://mirrors.aliyun.com/cygwin/
setx PATH "C:\Cygwin64;%PATH%;" /m

REM packer download
curl -L  "https://releases.hashicorp.com/packer/1.6.2/packer_1.6.2_windows_amd64.zip" --output c:\users\WDAGutilityAccount\Desktop\SANDBOX\packer_1.6.2_windows_amd64.zip
%SystemRoot%\syswow64\WindowsPowerShell\v1.0\powershell.exe -sta -noprofile -executionpolicy Unrestricted -file "c:\users\WDAGutilityAccount\Desktop\SANDBOX\unzip.ps1" -zip_path "c:\users\WDAGutilityAccount\Desktop\SANDBOX\packer_1.6.2_windows_amd64.zip" -unzip_path "C:\cygwin64\bin" -Force

REM terraform download
curl -L  "https://releases.hashicorp.com/terraform/0.13.2/terraform_0.13.2_windows_amd64.zip" --output c:\users\WDAGutilityAccount\Desktop\SANDBOX\terraform_0.13.2_windows_amd64.zip
%SystemRoot%\syswow64\WindowsPowerShell\v1.0\powershell.exe -sta -noprofile -executionpolicy Unrestricted -file "c:\users\WDAGutilityAccount\Desktop\SANDBOX\unzip.ps1" -zip_path "c:\users\WDAGutilityAccount\Desktop\SANDBOX\terraform_0.13.2_windows_amd64.zip" -unzip_path "C:\cygwin64\bin" -Force

REM vagrant download
curl -L  "https://releases.hashicorp.com/vagrant/2.2.10/vagrant_2.2.10_x86_64.msi" --output c:\users\WDAGutilityAccount\Desktop\SANDBOX\vagrant_2.2.10_x86_64.msi

REM download docker
curl -L  "https://download.docker.com/win/stable/Docker%20Desktop%20Installer.exe" --output c:\users\WDAGutilityAccount\Desktop\SANDBOX\Docker%20Desktop%20Installer.exe

REM pstools
curl -L  "https://download.sysinternals.com/files/PSTools.zip" --output c:\users\WDAGutilityAccount\Desktop\SANDBOX\PSTools.zip
%SystemRoot%\syswow64\WindowsPowerShell\v1.0\powershell.exe -sta -noprofile -executionpolicy Unrestricted -file "c:\users\WDAGutilityAccount\Desktop\SANDBOX\unzip.ps1" -zip_path "c:\users\WDAGutilityAccount\Desktop\SANDBOX\PSTools.zip" -unzip_path "C:\cygwin64\bin" -Force
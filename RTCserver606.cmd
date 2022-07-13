echo off
REM Download Visual Studio Code
REM curl -L "https://update.code.visualstudio.com/latest/win32-x64-user/stable" --output c:\users\WDAGutilityAccount\Desktop\SANDBOX\vscode.exe

REM install and run Visual Studio Code
REM c:\users\WDAGutilityAccount\Desktop\SANDBOX\vscode.exe  /verysilent /suppressmsgboxes

REM install Firefox 
"c:\users\WDAGutilityAccount\Desktop\SANDBOX\Firefox Installer.exe" /S

REM install docker for windows
REM "c:\users\WDAGutilityAccount\Desktop\SANDBOX\Docker Desktop Installer.exe"

REM execute script powershell 5.1: 
REM %SystemRoot%\syswow64\WindowsPowerShell\v1.0\powershell.exe -sta -noprofile -executionpolicy Unrestricted -file "c:\users\WDAGutilityAccount\Desktop\SANDBOX\myscript.ps1"

REM C:\Users\WDAGUtilityAccount\Desktop\SANDBOX\nuget.exe
REM copie des modules powershell
REM xcopy /E c:\users\WDAGutilityAccount\Desktop\SANDBOX\PackageManagement C:\Windows\SysWOW64\WindowsPowerShell\v1.0\Modules\
REM xcopy /E c:\users\WDAGutilityAccount\Desktop\SANDBOX\PowerShellGet C:\Windows\SysWOW64\WindowsPowerShell\v1.0\Modules\
REM xcopy /E c:\users\WDAGutilityAccount\Desktop\SANDBOX\NuGet C:\Windows\SysWOW64\WindowsPowerShell\v1.0\Modules\
REM xcopy /E c:\users\WDAGutilityAccount\Desktop\SANDBOX\DockerMsftProvider C:\Windows\SysWOW64\WindowsPowerShell\v1.0\Modules\


REM execute script powershell 7.0.3
REM C:\Users\WDAGUtilityAccount\Desktop\SANDBOX\Powershell-7.0.3\pwsh.exe  -sta -noprofile -executionpolicy Unrestricted -file "c:\users\WDAGutilityAccount\Desktop\SANDBOX\myscript.ps1"
echo on
msg "%username%" installation starting!
REM copy java jre and windows env variables
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v JAVA_HOME /t REG_SZ /d "C:\Program Files\Java\jdk1.8.0_191"
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v JRE_HOME /t REG_SZ /d "C:\Program Files\Java\jre1.8.0_261"
REM set CATALINA_HOME=C:\Program Files\apache-tomcat-9.0.37
setx JAVA_HOME=C:\Program Files\Java\jdk1.8.0_191
setx JRE_HOME=C:\Program Files\Java\jre1.8.0_261
mkdir "c:\Program Files\Java"
mkdir "c:\Program Files\Java\jdk1.8.0_191"
mkdir "c:\Program Files\Java\jre1.8.0_261"
xcopy /Y /E c:\users\WDAGutilityAccount\Desktop\SANDBOX\jdk1.8.0_191 "c:\Program Files\java\jdk1.8.0_191"
xcopy /Y /E c:\users\WDAGutilityAccount\Desktop\SANDBOX\jre1.8.0_261 "c:\Program Files\java\jre1.8.0_261"
setx PATH=%PATH%;c:\Program Files\java\jdk1.8.0_191\bin
msg "%username%" Java installed!
REM unzip ibm installation manager
%SystemRoot%\syswow64\WindowsPowerShell\v1.0\powershell.exe -sta -noprofile -executionpolicy Unrestricted -file "c:\users\WDAGutilityAccount\Desktop\SANDBOX\unzip.ps1"  -zip_path "C:\Users\WDAGUtilityAccount\Desktop\SANDBOX\agent.installer.win32.win32.x86_64_1.8.9000.20180313_1417.zip"  -unzip_path "C:\windows\temp"

cd c:\windows\temp\

REM installation of IBM installation manager silently
msg "%username%" IBM installation Manager installing!
.\installc -acceptLicense -showVerboseProgress --launcher.ini silent-install.ini
 REM unzip RTC web installer
 msg "%username%" unzipping CLM web installer!
%SystemRoot%\syswow64\WindowsPowerShell\v1.0\powershell.exe -sta -noprofile -executionpolicy Unrestricted -file "c:\users\WDAGutilityAccount\Desktop\SANDBOX\unzip.ps1" -zip_path "C:\Users\WDAGUtilityAccount\Desktop\SANDBOX\CLM-Web-Installer-Win-6.0.6.zip" -unzip_path "C:\windows\temp" -Force
cd c:\windows\temp\im\win32.win32.x86_64
REM unzip RTC repo
msg "%username%" unzipping RTC repositories!
%SystemRoot%\syswow64\WindowsPowerShell\v1.0\powershell.exe -sta -noprofile -executionpolicy Unrestricted -file "c:\users\WDAGutilityAccount\Desktop\SANDBOX\unzip.ps1" -zip_path "C:\Users\WDAGUtilityAccount\Desktop\SANDBOX\JTS-CCM-QM-RM-JRS-RELM-repo-6.0.6.zip" -unzip_path "C:\windows\temp\repo" -Force
REM silent file changed to set the repo path and install directory
REM msg "%username%" unzipping TOMCAT!
REM %SystemRoot%\syswow64\WindowsPowerShell\v1.0\powershell.exe -sta -noprofile -executionpolicy Unrestricted -file "c:\users\WDAGutilityAccount\Desktop\SANDBOX\unzip.ps1" -zip_path "C:\Users\WDAGUtilityAccount\Desktop\SANDBOX\apache-tomcat-9.0.37-windows-x64.zip" -unzip_path "C:\Program Files" -Force
msg "%username%" RTC server installing!
xcopy /Y C:\Users\WDAGUtilityAccount\Desktop\SANDBOX\silent-install-server.xml c:\windows\temp\im\win32.win32.x86_64

installc.exe -acceptLicense -showVerboseProgress -input silent-install-server.xml --launcher.ini silent-install.ini 

REM "c:\Program Files\apache-tomcat-9.0.37\bin\startup.bat"
REM msg "%username%" TOMCAT starting!
REM REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v CATALINA_HOME /t REG_SZ /d "C:\Program Files\apache-tomcat-9.0.37"
netstat -ano > c:\windows\temp\ports_list.txt
msg "%username%" End of installation!
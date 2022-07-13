REM Download Visual Studio Code
REM curl -L "https://update.code.visualstudio.com/latest/win32-x64-user/stable" --output c:\users\WDAGutilityAccount\Desktop\SANDBOX\vscode.exe

REM install and run Visual Studio Code
REM c:\users\WDAGutilityAccount\Desktop\SANDBOX\vscode.exe  /verysilent /suppressmsgboxes

REM install Firefox 
REM "c:\users\WDAGutilityAccount\Desktop\SANDBOX\Firefox Installer.exe" /S

REM install docker for windows
REM "c:\users\WDAGutilityAccount\Desktop\SANDBOX\Docker Desktop Installer.exe"

REM execute script powershell 5.1: 
msg "%username%" installation japanese language starting!
%SystemRoot%\syswow64\WindowsPowerShell\v1.0\powershell.exe -sta -noprofile -executionpolicy Unrestricted -file "c:\users\WDAGutilityAccount\Desktop\SANDBOX\japan.ps1"
msg "%username%" installation japanese language ended!
REM C:\Users\WDAGUtilityAccount\Desktop\SANDBOX\nuget.exe
REM powershell modules copy
REM xcopy /E c:\users\WDAGutilityAccount\Desktop\SANDBOX\PackageManagement C:\Windows\SysWOW64\WindowsPowerShell\v1.0\Modules\
REM xcopy /E c:\users\WDAGutilityAccount\Desktop\SANDBOX\PowerShellGet C:\Windows\SysWOW64\WindowsPowerShell\v1.0\Modules\
REM xcopy /E c:\users\WDAGutilityAccount\Desktop\SANDBOX\NuGet C:\Windows\SysWOW64\WindowsPowerShell\v1.0\Modules\
REM xcopy /E c:\users\WDAGutilityAccount\Desktop\SANDBOX\DockerMsftProvider C:\Windows\SysWOW64\WindowsPowerShell\v1.0\Modules\


REM execute script powershell 7.0.3
REM C:\Users\WDAGUtilityAccount\Desktop\SANDBOX\Powershell-7.0.3\pwsh.exe  -sta -noprofile -executionpolicy Unrestricted -file "c:\users\WDAGutilityAccount\Desktop\SANDBOX\myscript.ps1"

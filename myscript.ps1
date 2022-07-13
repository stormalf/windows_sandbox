 Set-ExecutionPolicy Unrestricted -Scope LocalMachine
 #[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
 #Install-PackageProvider -Name 'NuGet' -Force
 Set-PSRepository -Name "PSGallery" -InstallationPolicy Trusted
 Install-Module -Name NuGet -acceptLicense 
 Update-Module -Name NuGet 
 Install-Module -Name PowerShellGet -Force
 Update-Module -Name PowerShellGet
 Install-Module -Name 'dockermsftprovider' -Repository 'psgallery' -Force
 Import-Module -Name 'dockermsftprovider' 
 Save-Module -Name PowerShellGet -Path C:\Users\WDAGutilityAccount\Desktop\SANDBOX -Repository PSGallery
 Save-Module -Name NuGet -Path C:\Users\WDAGutilityAccount\Desktop\SANDBOX -Repository PSGallery
 Save-Module -Name 'dockermsftprovider' -Path C:\Users\WDAGutilityAccount\Desktop\SANDBOX -Repository PSGallery
# Register-PSRepository -Name 'dockerps-dev' -SourceLocation 'https://ci.appveyor.com/nuget/docker-powershell-dev'
# Get-PSRepository -Name dockerps-dev
# Install-Module 'docker' -Repository 'dockerps-dev' 
# Get-InstalledModule
# Import-Module -Name docker
# Get-Module -Name docker
# Update-Module -Name Docker
# Get-Container
# Request-ContainerImage -Repository microsoft/windowsservercore
# Get-Container
# Start-Container
# Wait-Container
# Get-Module -Module Containers
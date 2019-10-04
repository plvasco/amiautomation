Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

Set-Location C:\s3-downloads
Expand-Archive .\bigfixagent.zip
Expand-Archive .\mcafeeagent.zip
Expand-Archive .\wincollect.zip
Expand-Archive .\safenet.zip


choco install -y bigfixagent --source=C:\s3-downloads\bigfixagent
choco install -y mcafeeagent --source=C:\s3-downloads\mcafeeagent
choco install -y wincollect --source=C:\s3-downloads\wincollect
choco install -y safenet --source=C:\s3-downloads\safenet
choco install -y splunk
choco install -y awscli

C:\ProgramData\Amazon\EC2-Windows\Launch\Scripts\InitializeInstance.ps1 -Schedule
C:\ProgramData\Amazon\EC2-Windows\Launch\Scripts\SysprepInstance.ps1 -NoShutdown
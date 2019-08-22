Set-Location C:\s3-downloads\ChocoPackages\
#Expand-Archive .\Chocopkg4Download.zip
Expand-Archive .\bigfixagent.zip
Expand-Archive .\mcafeeagent.zip
Expand-Archive .\wincollect.zip
Expand-Archive .\safenet.zip
Expand-Archive .\splunk.zip



choco install -y bigfixagent --source=C:\s3-downloads\ChocoPackages\bigfixagent
choco install -y mcafeeagent --source=C:\s3-downloads\ChocoPackages\mcafeeagent
choco install -y wincollect --source=C:\s3-downloads\ChocoPackages\wincollect
choco install -y safenet --source=C:\s3-downloads\ChocoPackages\safenet
choco install -y splunk718 --source=C:\s3-downloads\ChocoPackages\splunk
choco install -y awscli

Copy-Item "C:\s3-downloads\deploymentclient.conf" -Destination "C:\Program Files\SplunkUniversalForwarder\etc\system\local\"

restart-service -name SplunkForwarder

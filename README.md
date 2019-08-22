# VAEC automated Windows AMI build

## Source
Account | AMI base
--- | ---
devtest-gov-external | Marketplace Windows_Server-2016-English-Full-Base-2019.05.15 (ami-378ef256)

Account | CMK | AMI Name | AMI ID | Snapshot ID 
--- | --- | --- | --- | ---
devtest-gov-external | VAEC_AMI_KEY | VAEC-Windows2016-base-%DATESTAMP%-encrypted | ami-xxxxxx | snap-xxxxxx

## Image for distribution
Account | CMK | AMI Name | AMI ID | Snapshot ID 
--- | --- | --- | --- | ---
core-gov-internal | VAEC-AMI | VAEC-Windows2016-base-20190619-encrypted | ami-xxxxx | snap-xxxxx

# Overview
Automated process to create a Windows AMI (supports Windows 2012 R2 and Windows 2016) based on AWS Marketplace image. 
The AMI build process is based on Packer and Jenkins. The build process is now 100% automated. One script runs in Jenkins and deploys the AMI, CRISP Utilities and Windows Updates.



  

# Dependencies
Jenkins Access - 10.247.92.28/job/Packer build/configure


## AMI Build Files
- `vaec-encryptedcrispami.json` - Packer file for the build job
- `Import-Certificate.ps1` - Imports Domain Join Certificate and add to trusted root authority 
- `ec2-userdata.ps1` - Provide user data details
- `init.ps1` - Provides inital boot strap
- `prereqs.ps1` - Provide download for binaries
- `unzip.ps1` - Provide unzip of compressed file and install of choco crisp package
- `win-update.ps1` - Provide for Windows Updates
- `version.ps1` - list an output text file listing CRISP conponents version numebers




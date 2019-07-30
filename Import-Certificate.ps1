$file = ( Get-ChildItem -Path C:\C:\s3-downloads\VA-Internal-S2-RCA1-v1.cer )
$file | Import-Certificate -CertStoreLocation cert:\LocalMachine\Root

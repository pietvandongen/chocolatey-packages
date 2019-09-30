$name = $env:ChocolateyPackageName
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools

$packageArgs = @{
  PackageName      = $name
  UnzipLocation    = $package
  Url64            = 'https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/19.0.0.9/wlp-webProfile8-19.0.0.9.zip'
  Checksum64       = 'B408ECB9829B6D367A914E5CB9B82F1160C0BAA3D701746485B757113ACB3AAE'
  ChecksumType64   = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

$name = $env:ChocolateyPackageName
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools

$packageArgs = @{
  PackageName      = $name
  UnzipLocation    = $package
  Url64            = 'https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/19.0.0.9/wlp-javaee7-19.0.0.9.zip'
  Checksum64       = '70D285A84D7A23FBFE9265E21DBDD44D82EBF9602FD673C3A917C597682CB156'
  ChecksumType64   = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

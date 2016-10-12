MkDir("C:\Temp\BoxStarterDownload")

iwr -Uri https://github.com/rob89m/BoxStarter_BasicBuild/archive/BoxStarter_HomeBuild.zip -OutFile C:\Temp\BoxStarterDownload\master.zip


$shell = New-Object -ComObject shell.application
$zip = $shell.NameSpace("C:\Temp\BoxStarterDownload\master.zip")
foreach ($item in $zip.items()) {
  $shell.Namespace("C:\Temp").CopyHere($item)
}


C:\Temp\BoxStarter_BasicBuild-master\process1.ps1

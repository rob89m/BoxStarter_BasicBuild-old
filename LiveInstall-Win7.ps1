MkDir("C:\Temp\BoxStarterDownload")

$url = "https://github.com/rob89m/BoxStarter_BasicBuild/archive/BoxStarter_HomeBuild.zip"
$output = "C:\Temp\BoxStarterDownload\master.zip"
$start_time = Get-Date

(New-Object System.Net.WebClient).DownloadFile($url, $output)
Write-Output "Time taken: $((Get-Date).Subtract($start_time).Seconds) second(s)"


$shell = New-Object -ComObject shell.application
$zip = $shell.NameSpace($output)
foreach ($item in $zip.items()) {
  $shell.Namespace("C:\Temp").CopyHere($item)
}


C:\Temp\BoxStarter_BasicBuild-BoxStarter_HomeBuild\process1.ps1

$tarballPath = Join-Path -Path $PSScriptRoot -ChildPath 'swift-DEVELOPMENT-SNAPSHOT-2018-04-21-a-ubuntu16.10.tar.gz'
$url = 'https://swift.org/builds/development/ubuntu1610/swift-DEVELOPMENT-SNAPSHOT-2018-04-21-a/swift-DEVELOPMENT-SNAPSHOT-2018-04-21-a-ubuntu16.10.tar.gz'

if (-not (Test-Path $tarballPath))
{
    Write-Host 'Swift tarball not found, downloading...' -NoNewLine
    $start = Get-Date

    [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
    $wc = New-Object System.Net.WebClient
    $wc.DownloadFile($url, $tarballPath)

    $elapsed = (Get-Date) - $start
    Write-Host " download complete. (${elapsed})"
}
else
{
    Write-Host "Swift tarball already present"
}

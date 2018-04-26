$url = 'https://swift.org/builds/swift-4.0-branch/ubuntu1604/swift-4.0-DEVELOPMENT-SNAPSHOT-2017-12-04-a/swift-4.0-DEVELOPMENT-SNAPSHOT-2017-12-04-a-ubuntu16.04.tar.gz'
$tarballFileName = $url.Split('/') | Select-Object -Last 1
$tarballPath = Join-Path -Path $PSScriptRoot -ChildPath $tarballFileName

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

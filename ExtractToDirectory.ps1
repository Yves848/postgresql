Add-Type -AssemblyName System.IO.Compression.FileSystem
function Unzip
{
    param([string]$zipfile, [string]$outpath)

    [System.IO.Compression.ZipFile]::ExtractToDirectory($zipfile, $outpath)
}


$File = "c:\download\postgresql.zip"
$ftp = "ftp://commit:commit@172.19.24.64/v4.7/distributions/postgresql-12.3-1-windows-x64-binaries.zip"

"Downloading postgresql-12.3-1-windows-x64-binaries.zip"

$webclient = New-Object System.Net.WebClient
$uri = New-Object System.Uri($ftp)

"Downloading $File..."

$webclient.DownloadFile($uri, $File)

"$File downloaded successfully ....."
"Decompressing"

Unzip $File "c:\download"
# Expand-Archive -Path $File -DestinationPath C:\download
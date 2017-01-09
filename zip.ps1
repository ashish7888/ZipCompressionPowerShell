Function ZipEveryThing($src, $dest)
{


Add-Type -AssemblyName System.IO.Compression.FileSystem
$zip = Get-ChildItem $src -Filter *.zip


Foreach ($zi IN $zip)
{
$all = $src + $zi
[System.IO.Compression.ZipFile]::ExtractToDirectory($all,$dest)
}

}
ZipEveryThing -src "C:\Users\ashish-pc\Documents\Zip\" -dest "C:\Users\ashish-pc\Documents\Zip\UnZip\"
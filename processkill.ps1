function Get-NetView {
	switch -regex (NET.EXE VIEW) { "^\\\\(?<Name>\S+)\s+" {$matches.Name}}
	}

$lista3=Get-NetView
$lista3 = $lista3[10..($lista3.Length+0)]

foreach ($y in $lista3){
    echo $y

    if ($y -ne "LE6430-4HNVLX1" -and $y -ne "LE6430-5XPVLX1" -and $y -ne "LE6430-2PMVLX1" -and $y -ne "LE6430-54NVLX1" -and $y -ne "LE6430-JHQVLX1" -and $y -ne "LE6430-6WKVLX1" -and $y -ne "LE6430-43NVLX1" -and $y -ne "LE6430-33QVLX1" -and $y -ne "LE6430-6YPVLX1" -and $y -ne "LE6430-D3PVLX1" -and $y -ne "LE6430-29GVLX1" -and $y -ne "LE6430-DXNVLX1")
    {
        taskkill -s \\$y -im hearthstone.exe -f

    }
}
pause
function Get-NetView {
	switch -regex (NET.EXE VIEW) { "^\\\\(?<Name>\S+)\s+" {$matches.Name}}
	}

$lista3=Get-NetView
$lista3 = $lista3[10..($lista3.Length+0)]

foreach ($y in $lista3){
    echo $y

    
    taskkill -s \\$y -im hearthstone.exe -f


}
pause
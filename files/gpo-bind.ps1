$target = $env:target
$gpos = $env:gpos

$gpos | ForEach-Object {
    New-GPLink -Name $_ -Domain dt.democloud -Target $target -LinkEnabled Yes
}
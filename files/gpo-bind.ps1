$target = $env:target
$gpos = $env:gpos
$domain = $env:domain

$gpos | ForEach-Object {
    New-GPLink -Name $_ -Domain $domain -Target $target -LinkEnabled Yes
}
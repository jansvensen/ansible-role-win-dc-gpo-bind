$target = $env:target
$gpos = $env:gpos
$domain = $env:domain

try {
    $gpos.Split(",") | ForEach-Object {
        New-GPLink -Name $_ -Domain $domain -Target $target -LinkEnabled Yes
    }
}

catch {

}

finally {
    
}
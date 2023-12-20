function link-gpos {

    [Parameter(Mandatory=$true)][String]$GPOs
    [Parameter(Mandatory=$true)][String]$target
    
    $GPOs | ForEach-Object {
        New-GPLink -Name $_ -Domain dt.democloud -Target $target -LinkEnabled Yes
    }
}

link-gpos -target $target -GPOs $GPOs
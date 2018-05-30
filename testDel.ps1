#
# Author: Tim Johnson
#
#
#
#
#
############################

$Path = ''
$Days = '4'
#Dir = Get-Childitem $Path  -Recurse
#Get-Childitem $Path -Recurse |? {$_.PSIsContainer -eq $true} | ?{ $_.GetFiles()} 
$folder = Get-Childitem $Path -Recurse |? {$_.PSIsContainer -eq $true} | ?{ !$_.GetFiles('*','AllDirectories')}
foreach ($f in $folder){

Remove-Item $f.fullname -Recurse -Confirm:$false -WhatIf


}


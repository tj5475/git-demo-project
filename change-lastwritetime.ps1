
function change-LastWriteTime {

Param (

$path, 
$days
)

$set = Get-Item $path 
$set.CreationTime = (Get-date).AddDays(-$days)
$set.LastWriteTime = (Get-date).AddDays(-$days)
$set.LastAccessTime = (Get-date).AddDays(-$days)

}
change-LastWriteTime -path 'F:\TestDel\parent1\child1_1' -days 7








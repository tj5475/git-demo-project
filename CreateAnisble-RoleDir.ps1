# make ansible role folder structure 
$role_name = 'install_ansible'                      
$role_path = 'F:\Scripts\ansible_cent\roles'

New-Item -Path $role_path -Name $role_name -ItemType Directory

#create role folders

$role_folders = @("defaults","files","handlers","meta","tasks","templates","test","vars")

foreach($roleFolder in $role_folders){


New-Item -Path "$role_path\$role_name" -Name $roleFolder -ItemType Directory

}

#create main.yml file

$ymlfiles = @("defaults","handlers","meta","tasks","vars")

foreach($ymlfile in $ymlfiles){

New-Item -Path "$role_path\$role_name\$ymlfile" -Name 'main.yml' -ItemType file

Set-Content "$role_path\$role_name\$ymlfile\main.yml" -Value "---" -Force
}


$FileToBackUp=$args[0]
Write-host $FileToBackUp "is the file to backup"

$NewFileName=$FileToBackUp + ".backup"
Write-Host $NewFileName "is the new file name"

Copy-Item "$FileToBackup" -Destination "$NewFileName"


$BackThisExt=$args[0]
Write-Host  "File Extension" $BackThisExt

$CurrentDir=Get-Location
$Check="$CurrentDir\Backup"
#Write-Host $Check

if(Test-Path -Path $CurrentDir)
{
    Write-Host "Backup folder does not exists. Building Backup folder"
    #New-Item -Path $CurrentDir -Name "Backup" -ItemType "directory"
}

$ListOfFiles=Get-ChildItem 
#Write-Host $ListOfFiles

foreach ($IndFile in $ListOfFiles) {
        $Extension=[IO.PATH]::GetExtension($IndFile)
       #Write-Host $Extension 
         
        

        if ($Extension -eq ".$BackThisExt")
        {
            Write-Host "found match"
            Copy-Item $IndFile -Destination $Check

            Write-Host $IndFile "will be backed up"

        }
    

}
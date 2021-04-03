$FileName=$args[0]
Write-Host "Reading from" $FileName

Write-Host "put in password"
$Pass = Read-Host -AsSecureString 

Write-Host $Pass "is the password"

#Get-Content $FileName

foreach ($line in Get-Content $FileName)
{

    #Requires Admin Privileges to run
    Write-Host $line
    New-LocalUser $line -Password $Pass


}

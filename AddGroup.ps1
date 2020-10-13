$group = Read-Host "group name"

New-ADGroup $group -GroupScope Global

[int] $numbr = Read-Host "max numbr user"

for($i=1; $i -le $numbr ; $i++){
    $name = Read-Host "name of user to put into $groupe"
    Add-ADGroupMember -identity $groupe -Members $nom
    Write-Host "user $nom added to $groupe."
}

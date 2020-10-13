$nom = Read-Host "nom + prenom"
$login = Read-Host "user name"
$mdp = Read-Host "mdpr"

New-ADUser -Name $nom -SamAccountName $login -UserPrincipalName $login@cestunpowershell.com -AccountPassword (ConvertTo-SecureString -AsPlainText $mdp -Force) -PasswordNeverExpires $true -CannotChangePassword $true -Enabled $true

//-SearchBase  "CN=CNNAME, CN=Users, DC=DCNAME, DC=COM" -Properties MemberOf
$user = Get-AdUser -Filter * 

foreach($u in $user) {

    $nom = $u.name

    $membre = $u.memberof

    Add-Content -Path "LIST.txt" -Value $nom

    Add-Content -Path "LIST.txt" -Value $membre

}

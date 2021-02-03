cmdkey /list | ForEach-Object{if($_ -like "*target=TERMSRV/*"){cmdkey /del:($_ -replace " ","" -replace "Target:","")}}
$user = $null
$server = $null
$serverPassword = $null
$server = Read-Host "Enter Server Name"
$user = "na\admin_gkumar31"
$serverPassword = "Cobol@123$"
cmdkey /generic:TERMSRV/$server /user:$user /pass:$serverPassword
mstsc /v:$server /w:800 /h:600
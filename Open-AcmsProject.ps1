[hashtable] $ProjectPaths = 
[ordered]@{ 
    ACMS = "D:\_IATEC\Sda.Acms\ACMS.sln"; 
    DISTRIBUTED = "D:\_IATEC\Sda.Acms.Distributed.Api\Sda.Acms.Distributed.Api.sln"; 
    MEMBERAPI = "D:\_IATEC\Sda.Acms.Member.Api\Sda.Acms.Member.Api.sln"
}
$ProjectPaths
$ProjectToStart = Read-Host 'What Project You Want to Start?'
$ProjectToStart = $ProjectToStart.ToUpper()
Write-Output $ProjectToStart

if ($ProjectToStart.Equals("ACMS") -or $ProjectToStart.Equals("0")  ) {
    Start-Process $ProjectPaths.ACMS
}
if ($ProjectToStart.Equals("DISTRIBUTED") -or $ProjectToStart.Equals("1") ) {
    Start-Process $ProjectPaths.DISTRIBUTED
}
if ($ProjectToStart.Equals("MEMBERAPI") -or $ProjectToStart.Equals("2") ) {
    Start-Process $ProjectPaths.MEMBERAPI
}
if ($ProjectToStart.Equals("BASE") -or $ProjectToStart.Equals("9") ) {
    Start-Process $ProjectPaths.ACMS
    Start-Process $ProjectPaths.DISTRIBUTED
}

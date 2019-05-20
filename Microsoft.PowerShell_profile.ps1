$SCRIPTPATH = "D:\Projects\_Scripts"

#Start Commands
Import-Module posh-git
Get-Date
d:

#Start Functions
function vim ($File) {
    $LOCATION  = Get-Location;
    #Write-Output "---------------------------------"
    if (-Not $File.Contains(":") ) {
        $File =  $LOCATION.ToString() + "/" + $File
        Write-Output $File

    }
    $File= $File.substring(0,1).ToLower()+$File.Substring(1)
    #Write-Output $File
    $File = $File -replace "\\", "/" -replace " ", "\ " -replace ":/","/"
    #Write-Output $File
    bash -c "vim /mnt/$File"
}

function Update-Profile (){
	$NEWPROFILE = "$SCRIPTPATH\my-powershell-profile\Microsoft.PowerShell_profile.ps1"
	Copy-Item -Path $NEWPROFILE -Destination $PROFILE -Force
}


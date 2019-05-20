$SCRIPTPATH = "D:\Projects\_Scripts"

function vim ($File) {
    $LOCATION  = Get-Location;
    #Write-Output $File
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
Get-Date
d:

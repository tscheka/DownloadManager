# uses DownloadManager.ps1

function Read-JsonPackageList {
    [CmdLetBinding()]
        param (
            [System.IO.Path]$Path,
            [DownloadPackage[]]$PackageList
            ) # END Param Definition
           
    if (test-path $Path) {

        $PackageList = get-content -Path $Path | ConvertFrom-Json

    } # END if       
    
    return $PackageList

} # END Read-BGTPackageList

function Read-JsonPackage {
    [CmdletBinding()]
        param (
            [string]$PackageName,
            [System.IO.Path]$Path,
            [DownloadPackage]$Package
        ) # END Param Definition
   
    if (test-path $Path) {

        $Package = get-content -Path $Path | ConvertFrom-Json | Where-Object PackageName -EQ $PackageName

    } # END if   

   return $Package

} # END Read-JsonPackage

function Save-JsonPackage {
    [CmdletBinding()]
    param (
            [System.IO.Path]$path,
            [DownloadPackage]$DownloadPackage
    ) # END Parameter Definition

        # TODO test if there is the packagename, when yes overwrite package, if not append
    $DownloadPackage | ConvertTo-Json | Out-File -FilePath $path -Append

} # END Save-JsonPackage

# TODO create new Package
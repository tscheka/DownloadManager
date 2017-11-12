class DownloadPackage {
        [string]$Name;
        [string]$Description;
        [PackageFile[]]$PackageFile

    DownloadPackage(
            [string]$Name,
            [string]$Description,
            [PackageFile[]]$PackageFile
            )
        {
            this.name           = $Name;
            this.Description    = $Description;
            this.PackageFile    = $PackageFile

        } #End Constructor

} #End Class DownloadPackage

class PackageFile {
        [SourceFile[]]$Source;
        [System.IO.Path]$Destination
} #End Class PackageFile

class SourceFile {
        [System.Uri]$SourceDownloadPath;
        [string]$FileHash
} # End Class SourceFile
    
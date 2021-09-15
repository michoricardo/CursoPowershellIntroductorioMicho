Function Get-Usage{
    Param($Name="Chrome")
    Get-Process $Name | Select-Object CPU
    }
    Get-Usage -name Notepad
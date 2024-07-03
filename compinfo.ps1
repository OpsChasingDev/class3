# write a script that gathers bits and pieces of info from a system and aggregates them together to a single output
# work with multiple remote systems in parallel

# get system name
$ComputerName = hostname

# get OS version
$OSVersion = [environment]::OSVersion.Version
# Get-ComputerInfo

# get number of logical drives
$LogicalDrive = Get-CimInstance CIM_LogicalDisk

# create custom object
$obj = [PSCustomObject]@{
    ComputerName = $ComputerName
    OSVersion = $OSVersion
    NumberLogicalDrive = $LogicalDrive
}

# write output
Write-Output $obj
# write a script that gathers bits and pieces of info from a system and aggregates them together to a single output
# work with multiple remote systems in parallel

# get system name
$ComputerName = hostname

# write output
Write-Output $ComputerName
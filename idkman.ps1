$services = Get-Service | Where-Object {$_.StartType -eq "Manual"}

foreach ($service in $services) {
    $serviceName = $service.Name
    $serviceStatus = $service.Status
    Write-Host "$serviceName is $serviceStatus"
}
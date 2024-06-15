param(
    [Parameter(Position=0, Mandatory=$true)]
    [string]$PositionalParameter,
    [Parameter(Mandatory=$false)]
    [string]$d
)

if ($PositionalParameter -eq "start") {
    $Env:time = Get-Date -Format "HH:mm"
    Write-Host -ForegroundColor Green "Timer started at $Env:time."
    return
}


while (-not (Test-Path Env:time)) {
    $Env:time = Read-Host "Seems like there is no start time set yet. Please enter the time of start of your task in the HH:mm format"
    while (-not ([string]$Env:time -as [DateTime])) {
        $Env:time = Read-Host "Ooops! Time you provided is not in a proper date time format. Please provide a proper time in the HH:mm format"
    }
}


$CurrentTime = Get-Date -Format "HH:mm"
$output = tempo l $PositionalParameter $Env:time-$CurrentTime -d "$d"

if (-not $output) {
    Write-Host -ForegroundColor red "There was an error while trying to log with tempo. No new start time was set."
    return
}

Write-Host -ForeGroundColor Green "$output`nSaved worklog is from $Env:time to $CurrentTime."

$Env:time = $CurrentTime

Write-Host "New start time was set to $Env:Time."
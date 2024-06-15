if ($env:Path.split(';').contains($PSScriptRoot)) {
    echo "Already added" 
} else {
    [Environment]::SetEnvironmentVariable("Path", "$env:Path;$PSScriptRoot", [System.EnvironmentVariableTarget]::Machine)    
}
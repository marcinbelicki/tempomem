tempomem script's purpose is to provide more functionalities to [tempomat](https://github.com/szymonkozak/tempomat). The assumption is that the user is using Windows powershell and the tempomat is already installed.
## Installation
Run the `install-tempomem.ps1` script.
## Functionality
The command `tempomem start` will set the start time to the current time on your machine. Start time will be remembered for your current powershell session.

When the start time is set you can use tempomem with `tempomem XXX-1234 -d "What a day..."`. This command will log to task `XXX-1234` with the description `What a day...`. The start time of the worklog is start time you set with `tempomem start` (if it is not set yet, the script will ask you to provide one). The end time of the worklog is current time on your machine. The script will automatically update new start time to be the end time of the worklog.

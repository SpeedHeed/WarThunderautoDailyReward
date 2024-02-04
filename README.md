![War Thunder!](https://static.warthunder.com/upload/image/!%202019%20NEWS/12%20December/New%20Year%20Sale/britain_new_year_bundle_inner_bbf6b0588a9eba6980ba9833561579e5.jpg)
---
# <p style="text-align: center;">Description</p>
A Powershell Script to automatically get the Daily Rewards in War Thunder once it is set up

# <p style="text-align: center;">Usage</p>

### Prerequisites

*   Powershell 7 (Optional)
*   Wake on LAN\*
*   War Thunder installed via Steam

\*It is used to start the computer remotely in case you are not at home or on vacation.

This script simulates the left mouse button to get the Daily Reward, so you have to get the y and x coordinates to work it properly.

Launch this command to get the y and x coordinates:
```powershell
Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Cursor]::Position
```
Output example:
```powershell
IsEmpty    X   Y
-------    -   -
  False 1627 706
```
Now you can change these variables:
```powershell
$x = 1282
$y = 612
```

**You have to create a Task in Task Schedular, if you don't want to start it manually**  
    [How to create a Task](https://m365scripts.com/microsoft365/schedule-powershell-script-execution-with-task-scheduler/)

Poweshell 7.4
```powershell
pwsh.exe -executionpolicy bypass -WindowStyle hidden "F:\PATH\WarThunder_DailyReward.ps1"
```

Windows Powershell  
```powershell
 powershell.exe -executionpolicy bypass -WindowStyle hidden "F:\PATH\WarThunder_DailyReward.ps1"
```

Task for Reference: [WarThunderDailyReward.xml](https://m365scripts.com/microsoft365/schedule-powershell-script-execution-with-task-scheduler/](https://github.com/SpeedHeed/WarThunderautoDailyReward/blob/main/WarThunderDailyReward.xml)https://github.com/SpeedHeed/WarThunderautoDailyReward/blob/main/WarThunderDailyReward.xml)

Change this:
```powershell
Stop-Computer -ComputerName localhost
```
to this:
```powershell
shutdown /s /f
```
for Windows Powershell

---

## ‼️Disclaimer‼️

The use of this script may potentially violate the terms of service, end-user license agreement, or other policies established by Gaijin Entertainment for the game War Thunder. The creators of this script do not condone, encourage, or support any activities that breach the terms set forth by Gaijin Entertainment. Users who choose to utilize this script do so at their own risk and are solely responsible for any consequences that may arise from its usage, including but not limited to account suspension, termination, or legal action. This script is not affiliated with or endorsed by Gaijin Entertainment in any way. Use discretion and respect the terms and conditions outlined by Gaijin Entertainment to maintain a positive and lawful gaming experience.

[Code of Conduct](https://m365scripts.com/microsoft365/schedule-powershell-script-execution-with-task-scheduler/](https://github.com/SpeedHeed/WarThunderautoDailyReward/blob/main/WarThunderDailyReward.xml)https://github.com/SpeedHeed/WarThunderautoDailyReward/blob/main/WarThunderDailyReward.xml](https://legal.gaijin.net/codeofconduct)https://legal.gaijin.net/codeofconduct)  ● 
[Terms of Service](https://m365scripts.com/microsoft365/schedule-powershell-script-execution-with-task-scheduler/](https://github.com/SpeedHeed/WarThunderautoDailyReward/blob/main/WarThunderDailyReward.xml)https://github.com/SpeedHeed/WarThunderautoDailyReward/blob/main/WarThunderDailyReward.xml](https://legal.gaijin.net/codeofconduct)https://legal.gaijin.net/codeofconduct](https://legal.gaijin.net/termsofservice)https://legal.gaijin.net/termsofservice)

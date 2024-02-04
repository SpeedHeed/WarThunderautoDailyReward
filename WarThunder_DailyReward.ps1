# Pfad zur Steam-Anwendung
$steamPath = "C:\Program Files (x86)\Steam\Steam.exe"

# Spiel-ID des gewünschten Spiels (du findest dies in der URL des Spiels im Steam-Shop)
$spielID = "236390"

# Starte das Steam-Spiel
Start-Process -FilePath $steamPath -ArgumentList "-applaunch $spielID"
$duration = 70

# Starte den Countdown
Write-Host "Countdown gestartet..."

# Führe den Countdown aus
while ($duration -ge 0) {
    Clear-Host  # Löscht die vorherige Ausgabe
    Write-Host "Verbleibende Zeit: $duration Sekunden"
    Start-Sleep -Seconds 1  # Wartezeit von 1 Sekunde
    $duration--  # Reduziere die verbleibende Zeit um 1 Sekunde
}
Write-Host "Timer ist abgelaufen!"

# Importiere die erforderliche DLL
Add-Type @"
    using System;
    using System.Runtime.InteropServices;
    public class PInvoke {
        [DllImport("user32.dll")]
        [return: MarshalAs(UnmanagedType.Bool)]
        public static extern bool SetForegroundWindow(IntPtr hWnd);
    }
"@ -ErrorAction Ignore

# Finde den Prozess nach Namen
$prozess = Get-Process -Name "aces*"

# Überprüfe, ob der Prozess gefunden wurde
if ($prozess -ne $null) {
    # Bringe das Programm in den Fokus
    [void][PInvoke]::SetForegroundWindow($prozess.MainWindowHandle)
} else {
    Write-Host "Prozess '$prozessName' wurde nicht gefunden."
}

Write-Host "War Thunder ist nun im Vordergrund!"

Add-Type -AssemblyName System.Windows.Forms

$p1 = [System.Windows.Forms.Cursor]::Position.X = 1282

$p2 = [System.Windows.Forms.Cursor]::Position.Y = 612

[System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($p1, $p2)


1..5 | foreach-Object {
    Add-Type -MemberDefinition @"
    [DllImport("user32.dll")]
    public static extern void mouse_event(uint dwFlags, int dx, int dy, uint dwData, int dwExtraInfo);
"@ -Name U32 -Namespace W -ErrorAction Ignore

# Maus-Tasten-Flags
$leftButtonDown = 0x0002
$leftButtonUp = 0x0004

# Simuliere Mausklick (Maus-Taste gedrückt)
[W.U32]::mouse_event($leftButtonDown, 0, 0, 0, 0)

# Wartezeit für 500ms
Start-Sleep -Milliseconds 500

# Simuliere Mausklick (Maus-Taste losgelassen)
[W.U32]::mouse_event($leftButtonUp, 0, 0, 0, 0)

Start-Sleep -Seconds 1
}

Write-Host "Programm schliesst sich nun!"

Start-sleep -Seconds 3

# Programm schließen
Get-Process -Name "aces*" | Stop-Process

Stop-Computer -ComputerName localhost
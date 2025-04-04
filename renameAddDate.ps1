# Pfad zum Ordner
$folderPath = "D:\Downloads\Mathemann"

# Alle Dateien im Ordner abrufen
$files = Get-ChildItem -Path $folderPath

foreach ($file in $files) {
    # Letztes Änderungsdatum abrufen
    $lastModified = $file.LastWriteTime
    $dateString = $lastModified.ToString("yyyy-MM-dd")

    # Neuer Dateiname mit Datum am Anfang
    $newFileName = "$dateString-$($file.Name)"

    # Vollständiger Pfad für die Umbenennung
    $newFilePath = Join-Path -Path $folderPath -ChildPath $newFileName

    # Datei umbenennen
    Rename-Item -Path $file.FullName -NewName $newFilePath
}

Write-Host "Dateien wurden erfolgreich umbenannt."
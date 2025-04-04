@echo off
setlocal enabledelayedexpansion
: Umlaut Support
chcp 1252
set "PATH=%PATH%;C:\Program Files\MKVToolNix"

echo.
echo.

set "language=deu"
set /p language="Welche Sprache haben die Daten (3-stelliger Code z.B.: eng oder deu)? "
echo Die eingegebene Sprache ist: %language%
echo.

set /p userPath="Bitte geben Sie den vollständigen Dateipfad ein: "
if exist "%userPath%" (
    cd /d "%userPath%"
    echo Das aktuelle Verzeichnis ist jetzt: %cd%
	echo.
	
	echo Beginne Änderungen der Audiodaten...
	echo.
	
	for %%f in (*.mkv) do (
		echo Editing: %%f
		mkvpropedit.exe "%%f" --edit track:a1 --set "language=%language%"
		echo.
	)

	echo.
	echo.
	echo.
	echo Das Script wurde erfolgreich ausgeführt!
) else (
    echo Der eingegebene Pfad ist ungültig. Bitte versuchen Sie es erneut.
    goto input
)

echo.
echo.

pause
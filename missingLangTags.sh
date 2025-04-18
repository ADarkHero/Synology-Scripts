# Ordnerpfad
folder="/volume1/Videos"

cd $folder

# Ergebnisdatei
output_file="missingLangTags.txt"

# Leere Ergebnisdatei
> "$output_file"

# Dateien suchen, die die Endungen .mkv, .mp4 oder .avi haben und kein "@" oder "[" enthalten
grep -r --exclude='*@*' --exclude='*[*' --exclude-dir='*@*' --exclude-dir='*[*' -l -e mkv -e mp4 -e avi >> "$output_file"
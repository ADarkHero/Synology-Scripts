cd /volume1/Videos
find /volume1/Videos -name "*.mkv" -type f -follow > videoFilelist.txt
find /volume1/Videos -name "*.mp4" -type f -follow >> videoFilelist.txt
find /volume1/Videos -name "*.avi" -type f -follow >> videoFilelist.txt

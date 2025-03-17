# https://www.filebot.net/cli.html
# --q MOVIEDBNUMBER

# Rename by scheme
# NAME (YEAR) {TMDB/TVDB ID}/Season X - SEASONNAME/NAME SxxExx Episode Name [Audio Languages][Subtitle Languages] Resolution VideoFormat AudioFormat
# Use language German
# Skip conflicts
# Refresh and apply metadata to file
# Log to txt
# Non strict matching
# Copy file
# Output to DONE directory

LOG_FILE="/volume1/Random-Stuff/FileBot/logs/$(date '+%Y-%m')/filebotlog_$(date '+%Y-%m-%d').txt"
INPUT_FOLDER_BASE="/volume1/JDownloader/_DONE/"
OUTPUT_FOLDER="/volume1/JDownloader/_DONE/"

sudo chmod -R 777 ${INPUT_FOLDER_BASE}  | tee -a ${LOG_FILE}

echo "------------------------------------" | tee -a ${LOG_FILE}
echo $(date '+%Y-%m-%d %H:%M:%S') | tee -a ${LOG_FILE}
echo "------------------------------------" | tee -a ${LOG_FILE}
echo " " | tee -a ${LOG_FILE}

echo " " | tee -a ${LOG_FILE}
echo "> TheMovieDB (TV shows)" | tee -a ${LOG_FILE}
echo " " | tee -a ${LOG_FILE}

# MovieDB (TV shows)
filebot -rename -r "${INPUT_FOLDER_BASE}moviedb" --format "{ny} { '{tmdb-' + tmdbid + '}' }/{'Season '+s}{' - ' + sn}/{n.replace(' ', '.')}.{s00e00}.{t.replace(' ', '.')}.{audioLanguages.toString().replace(' ', '')}{textLanguages.toString().replace(' ', '')}.{vf}.{vc}.{acf}{ '.' + hdr }" --db TheMovieDB::TV --lang German --conflict skip --apply refresh --log-file ${LOG_FILE} -non-strict --action copy --output ${OUTPUT_FOLDER}

echo " " | tee -a ${LOG_FILE}
echo " " | tee -a ${LOG_FILE}
echo "> TheMovieDB (movies)" | tee -a ${LOG_FILE}
echo " " | tee -a ${LOG_FILE}

# MovieDB (movies)
filebot -rename -r "${INPUT_FOLDER_BASE}movies" --format "{ny.replace(' ', '.')}.{ '{tmdb-' + tmdbid + '}' }.{audioLanguages.toString().replace(' ', '')}{textLanguages.toString().replace(' ', '')}.{vf}.{vc}.{acf}{ '.' + hdr }" --db TheMovieDB --lang German --conflict skip --apply refresh --log-file ${LOG_FILE} -non-strict --action copy --output ${OUTPUT_FOLDER}

echo " " | tee -a ${LOG_FILE}
echo " " | tee -a ${LOG_FILE}
echo "> TheTVDB (TV shows)" | tee -a ${LOG_FILE}
echo " " | tee -a ${LOG_FILE}

# TVDB
filebot -rename -r "${INPUT_FOLDER_BASE}tvdb" --format "{ny} { '{tvdb-' + tvdbid + '}' }/{'Season '+s}{' - ' + sn}/{n.replace(' ', '.')}.{s00e00}.{t.replace(' ', '.')}.{audioLanguages.toString().replace(' ', '')}{textLanguages.toString().replace(' ', '')}.{vf}.{vc}.{acf}{ '.' + hdr }" --db TheTVDB --lang German --conflict skip --apply refresh --log-file ${LOG_FILE} -non-strict --action copy --output ${OUTPUT_FOLDER}

echo " " | tee -a ${LOG_FILE}
echo " " | tee -a ${LOG_FILE}
echo "> No database" | tee -a ${LOG_FILE}
echo " " | tee -a ${LOG_FILE}

# NoDB
filebot -rename -r "${INPUT_FOLDER_BASE}nodb" --format "{n.replace(' ', '.')}.{s00e00}.{t.replace(' ', '.')}.{audioLanguages.toString().replace(' ', '')}{textLanguages.toString().replace(' ', '')}.{vf}.{vc}.{acf}{ '.' + hdr }" --db file --lang German --conflict skip --apply refresh --log-file ${LOG_FILE} -non-strict --action copy --output ${OUTPUT_FOLDER} 

echo " " | tee -a ${LOG_FILE}
echo " " | tee -a ${LOG_FILE}
echo " " | tee -a ${LOG_FILE}
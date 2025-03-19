FOLDER_NAME="Catfish"
LOG_FILE="/volume1/Random-Stuff/FileBot/logs/$(date '+%Y-%m')/filebotlog_$(date '+%Y-%m-%d').txt"
INPUT_FOLDER_BASE="/volume1/JDownloader/_DONE/"
OUTPUT_FOLDER="/volume1/JDownloader/_DONE/"
filebot -rename -r "${INPUT_FOLDER_BASE}moviedb/${FOLDER_NAME}" --format "{ny} { '{tmdb-' + tmdbid + '}' }/{'Season '+s}{' - ' + sn}/{n.replace(' ', '.')}.{s00e00}.{t.replace(' ', '.')}.{audioLanguages.toString().replace(' ', '')}{textLanguages.toString().replace(' ', '')}.{vf}.{vc}.{acf}{ '.' + hdr }" --db TheMovieDB::TV --lang German --conflict skip --apply refresh --log-file ${LOG_FILE} -non-strict --action move --output ${OUTPUT_FOLDER} --q 46910
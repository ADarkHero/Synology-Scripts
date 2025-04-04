analyze_folders() {
    local base_dir=$1

    for dir in "$base_dir"*/; do 
        total_size=$(du -sb "$dir" | cut -f1)
        file_count=$(find "$dir" -type f -size +5M | wc -l)
        if [ "$file_count" -gt 0 ]; then
            avg_size=$((total_size / file_count))
            avg_size_human=$(numfmt --to=si "$avg_size")
        else
            avg_size_human="0B"
        fi
        echo -e "$(du -sh "$dir" | cut -f1) \t$file_count Videos\tØ $avg_size_human\t\t$dir"
    done | sort -k1,1hr
}

analyze_movie_folders() {
    moviedir="$1"
	filter="$2"

	find "$moviedir" -type f -size +5M -exec ls -lh {} + | awk '{ 
		size=$5; 
		name=""; 
		for (i=9; i<=NF; i++) name = name $i " "; 
		printf "%s\t%s\n", size, name 
	}' | grep "$filter" |  sort -hr
}


cd /volume1/Videos
echo "----------------------------------------------"  > biggestDirectories.txt
echo "- STATISTIKEN ÜBER DIE GRÖßE DER VIDEOORDNER -"  >> biggestDirectories.txt
echo "----------------------------------------------"  >> biggestDirectories.txt
analyze_folders "/volume1/Videos/" >> biggestDirectories.txt
echo " "  >> biggestDirectories.txt

analyze_folders "/volume1/Videos/Serien/" >> biggestDirectories.txt
echo " "  >> biggestDirectories.txt

analyze_folders "/volume1/Videos/Filme/" >> biggestDirectories.txt
echo " "  >> biggestDirectories.txt

analyze_folders "/volume1/Videos/NSFW/" >> biggestDirectories.txt
echo " "  >> biggestDirectories.txt

echo "----------------------------------------------"  >> biggestDirectories.txt
echo "Anime"  >> biggestDirectories.txt
echo "----------------------------------------------"  >> biggestDirectories.txt
analyze_folders "/volume1/Videos/Serien/Anime/" >> biggestDirectories.txt
echo " "  >> biggestDirectories.txt
echo " "  >> biggestDirectories.txt

echo "----------------------------------------------"  >> biggestDirectories.txt
echo "Cartoon"  >> biggestDirectories.txt
echo "----------------------------------------------"  >> biggestDirectories.txt
analyze_folders "/volume1/Videos/Serien/Cartoon/" >> biggestDirectories.txt
echo " "  >> biggestDirectories.txt
echo " "  >> biggestDirectories.txt

echo "----------------------------------------------"  >> biggestDirectories.txt
echo "Live Action"  >> biggestDirectories.txt
echo "----------------------------------------------"  >> biggestDirectories.txt
analyze_folders "/volume1/Videos/Serien/Live Action/" >> biggestDirectories.txt
echo " "  >> biggestDirectories.txt
echo " "  >> biggestDirectories.txt

echo "----------------------------------------------"  >> biggestDirectories.txt
echo "Marina"  >> biggestDirectories.txt
echo "----------------------------------------------"  >> biggestDirectories.txt
analyze_folders "/volume1/Videos/Serien/Marina/" >> biggestDirectories.txt
echo " "  >> biggestDirectories.txt
echo " "  >> biggestDirectories.txt

echo "----------------------------------------------"  >> biggestDirectories.txt
echo "NSFW - Hentai"  >> biggestDirectories.txt
echo "----------------------------------------------"  >> biggestDirectories.txt
analyze_folders "/volume1/Videos/NSFW/Hentai/" >> biggestDirectories.txt
echo " "  >> biggestDirectories.txt
echo " "  >> biggestDirectories.txt

echo "----------------------------------------------"  >> biggestDirectories.txt
echo "NSFW - Live Action"  >> biggestDirectories.txt
echo "----------------------------------------------"  >> biggestDirectories.txt
analyze_folders "/volume1/Videos/NSFW/Live Action/" >> biggestDirectories.txt
echo " "  >> biggestDirectories.txt
echo " "  >> biggestDirectories.txt

echo "----------------------------------------------"  >> biggestDirectories.txt
echo "Filme - Anime"  >> biggestDirectories.txt
echo "----------------------------------------------"  >> biggestDirectories.txt
echo "> 2160p"  >> biggestDirectories.txt
analyze_movie_folders "/volume1/Videos/Filme/Anime/" "2160p" >> biggestDirectories.txt
echo " "  >> biggestDirectories.txt
echo "> 1080p"  >> biggestDirectories.txt
analyze_movie_folders "/volume1/Videos/Filme/Anime/" "1080p" >> biggestDirectories.txt
echo " "  >> biggestDirectories.txt
echo "> 720p"  >> biggestDirectories.txt
analyze_movie_folders "/volume1/Videos/Filme/Anime/" "720p" >> biggestDirectories.txt
echo " "  >> biggestDirectories.txt
echo "> 480p"  >> biggestDirectories.txt
analyze_movie_folders "/volume1/Videos/Filme/Anime/" "480p" >> biggestDirectories.txt
echo " "  >> biggestDirectories.txt
echo " "  >> biggestDirectories.txt

echo "----------------------------------------------"  >> biggestDirectories.txt
echo "Filme - Cartoon"  >> biggestDirectories.txt
echo "----------------------------------------------"  >> biggestDirectories.txt
echo "> 2160p"  >> biggestDirectories.txt
analyze_movie_folders "/volume1/Videos/Filme/Cartoon/" "2160p" >> biggestDirectories.txt
echo " "  >> biggestDirectories.txt
echo "> 1080p"  >> biggestDirectories.txt
analyze_movie_folders "/volume1/Videos/Filme/Cartoon/" "1080p" >> biggestDirectories.txt
echo " "  >> biggestDirectories.txt
echo "> 720p"  >> biggestDirectories.txt
analyze_movie_folders "/volume1/Videos/Filme/Cartoon/" "720p" >> biggestDirectories.txt
echo " "  >> biggestDirectories.txt
echo "> 480p"  >> biggestDirectories.txt
analyze_movie_folders "/volume1/Videos/Filme/Cartoon/" "480p" >> biggestDirectories.txt
echo " "  >> biggestDirectories.txt
echo " "  >> biggestDirectories.txt

echo "----------------------------------------------"  >> biggestDirectories.txt
echo "Filme - Live Action"  >> biggestDirectories.txt
echo "----------------------------------------------"  >> biggestDirectories.txt
echo "> 2160p"  >> biggestDirectories.txt
analyze_movie_folders "/volume1/Videos/Filme/Live Action/" "2160p" >> biggestDirectories.txt
echo " "  >> biggestDirectories.txt
echo "> 1080p"  >> biggestDirectories.txt
analyze_movie_folders "/volume1/Videos/Filme/Live Action/" "1080p" >> biggestDirectories.txt
echo " "  >> biggestDirectories.txt
echo "> 720p"  >> biggestDirectories.txt
analyze_movie_folders "/volume1/Videos/Filme/Live Action/" "720p" >> biggestDirectories.txt
echo " "  >> biggestDirectories.txt
echo "> 480p"  >> biggestDirectories.txt
analyze_movie_folders "/volume1/Videos/Filme/Live Action/" "480p" >> biggestDirectories.txt
echo " "  >> biggestDirectories.txt
echo " "  >> biggestDirectories.txt
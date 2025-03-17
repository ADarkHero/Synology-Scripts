cd /volume1/Videos
du --max-depth=1 "/volume1/Videos/" | sort -k1,1nr > biggestDirectories.txt
echo " "  >> biggestDirectories.txt
du --max-depth=1 "/volume1/Videos/Serien/" | sort -k1,1nr >> biggestDirectories.txt
echo " "  >> biggestDirectories.txt
du --max-depth=1 "/volume1/Videos/Filme/" | sort -k1,1nr >> biggestDirectories.txt
echo " "  >> biggestDirectories.txt
echo " "  >> biggestDirectories.txt
echo "----------------------------------------"  >> biggestDirectories.txt
echo "Anime"  >> biggestDirectories.txt
echo "----------------------------------------"  >> biggestDirectories.txt
du --max-depth=1 "/volume1/Videos/Serien/Anime" | sort -k1,1nr >> biggestDirectories.txt
echo " "  >> biggestDirectories.txt
echo " "  >> biggestDirectories.txt
echo "----------------------------------------"  >> biggestDirectories.txt
echo "Cartoon"  >> biggestDirectories.txt
echo "----------------------------------------"  >> biggestDirectories.txt
du --max-depth=1 "/volume1/Videos/Serien/Cartoon" | sort -k1,1nr >> biggestDirectories.txt
echo " "  >> biggestDirectories.txt
echo " "  >> biggestDirectories.txt
echo "----------------------------------------"  >> biggestDirectories.txt
echo "Live Action"  >> biggestDirectories.txt
echo "----------------------------------------"  >> biggestDirectories.txt
du --max-depth=1 "/volume1/Videos/Serien/Live Action" | sort -k1,1nr >> biggestDirectories.txt
echo " "  >> biggestDirectories.txt
echo " "  >> biggestDirectories.txt
echo "----------------------------------------"  >> biggestDirectories.txt
echo "Marina"  >> biggestDirectories.txt
echo "----------------------------------------"  >> biggestDirectories.txt
du --max-depth=1 "/volume1/Videos/Serien/Marina" | sort -k1,1nr >> biggestDirectories.txt
echo " "  >> biggestDirectories.txt
echo " "  >> biggestDirectories.txt
echo "----------------------------------------"  >> biggestDirectories.txt
echo "Filme - Anime"  >> biggestDirectories.txt
echo "----------------------------------------"  >> biggestDirectories.txt
du --max-depth=1 "/volume1/Videos/Filme/Anime" | sort -k1,1nr >> biggestDirectories.txt
echo " "  >> biggestDirectories.txt
echo " "  >> biggestDirectories.txt
echo "----------------------------------------"  >> biggestDirectories.txt
echo "Filme - Cartoon"  >> biggestDirectories.txt
echo "----------------------------------------"  >> biggestDirectories.txt
du --max-depth=1 "/volume1/Videos/Filme/Cartoon" | sort -k1,1nr >> biggestDirectories.txt
echo " "  >> biggestDirectories.txt
echo " "  >> biggestDirectories.txt
echo "----------------------------------------"  >> biggestDirectories.txt
echo "Filme - Live Action"  >> biggestDirectories.txt
echo "----------------------------------------"  >> biggestDirectories.txt
du --max-depth=1 "/volume1/Videos/Filme/Live Action" | sort -k1,1nr >> biggestDirectories.txt
echo " "  >> biggestDirectories.txt
echo " "  >> biggestDirectories.txt
echo "----------------------------------------"  >> biggestDirectories.txt
echo "NSFW"  >> biggestDirectories.txt
echo "----------------------------------------"  >> biggestDirectories.txt
du --max-depth=1 "/volume1/Videos/NSFW" | sort -k1,1nr >> biggestDirectories.txt
echo " "  >> biggestDirectories.txt
echo " "  >> biggestDirectories.txt
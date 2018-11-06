# icon ? for PWA ? 
# favicon ? 

OUTFILE="./index.html"
SHAREBTNS=YES

cat ./templates/random-head.tpl.html > $OUTFILE

cd ./audio
for dir in */
do
    dir=${dir%/}		# strip trailing /
 #   dir=${dir##*/}		# strip path & leading / (useless here)
    echo $dir
	# echo "<h2>"$dir"</h2><ol>" >> ../$OUTFILE
    cd "$dir"
	for file in *.mp3
	do
		name=$(echo "$file" | cut -f 1 -d '.')
		echo "   "$file
		title=$(echo "${name:3:${#name}}")	#strip first 3 chars (tracks #)
		echo "<li><a href=\"audio/"$dir"/"$file"\" download>"$title"</a></li>" >> ../../$OUTFILE
		echo "<audio><source src=\"audio/"$dir"/"$file"\" type=\"audio/mpeg\">" >> ../../$OUTFILE
		echo "This browser doesn't support mp3 playing : install chrome !</audio>" >> ../../$OUTFILE
	done
	echo "</ol>" >> ../../$OUTFILE
	cd ..
done

cd ..
if [ -n "${SHAREBTNS+set}" ];
then
	cat ./templates/shareBtns.tpl.html >> $OUTFILE
fi
cat ./templates/random-foot.tpl.html >> $OUTFILE

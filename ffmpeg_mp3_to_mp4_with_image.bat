for /f "tokens=1 delims=." %%a in ('dir /B *.mp3') do ffmpeg -loop 1 -i "image.jpg" -i "%%a.mp3" -vf pad="width=ceil(iw/2)*2:height=ceil(ih/2)*2" -c:a copy -c:v libx264 -shortest "%%a.mp4"

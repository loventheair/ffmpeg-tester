@echo off
mkdir converted
for %%a in ("*.mp3") do ffmpeg -i "%%a" -stream_loop -1 -i theriver.mov -c:a copy -c:v h264_nvenc -vf "[in]drawtext=text='%%~na':fontfile='/Windows/Fonts/DancingScript-Bold.ttf':fontcolor=white:fontsize=250:enable='between(t,2,12)':x=(w-text_w)/2:y=(h-text_h)/2" -shortest "converted\%%~na.mp4"
pause



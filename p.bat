@echo off

# 2s?#123

rename *. *.rar
"C:\Program Files\WinRAR\UnRAR.exe" x *.rar
rename *.rar *.


# del *.

ffmpeg -f concat -safe 0 -i filelist.txt -c copy output.mp4
rename output.mp4 output.bak
del *.chr
rename output.bak output.mp4



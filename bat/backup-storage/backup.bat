@echo off
set BAT_ROOT=%~dp0
set LOG_FILE=%BAT_ROOT%\logs\robocopy_%date:~0,4%%date:~5,2%%date:~8,2%_%time:~0,2%%time:~3,2%%time:~6,2%.log

REM D to E
call :rcopy d:\@temp e:\@temp
call :rcopy d:\Z01_image e:\Z01_image
call :rcopy d:\Z02_word e:\Z02_word
call :rcopy d:\Z03_music e:\Z03_music
call :rcopy d:\Z04_comic e:\Z04_comic
call :rcopy d:\Z04_comic_comp e:\Z04_comic_comp
call :rcopy d:\Z05_rom e:\Z05_rom
call :rcopy d:\Z06_photo e:\Z06_photo

REM D to F
call :rcopy d:\@temp f:\@temp
call :rcopy d:\Z01_image f:\Z01_image
call :rcopy d:\Z02_word f:\Z02_word
call :rcopy d:\Z03_music f:\Z03_music
call :rcopy d:\Z04_comic f:\Z04_comic
call :rcopy d:\Z04_comic_comp f:\Z04_comic_comp
call :rcopy d:\Z05_rom f:\Z05_rom
call :rcopy d:\Z06_photo f:\Z06_photo

REM E to F (only video files)
call :rcopy e:\Z09_video f:\Z09_video
call :rcopy e:\Z09_video_anime f:\Z09_video_anime 

exit /b 0

REM =============================================
REM func: call robocopy.
REM =============================================
:rcopy
robocopy %1 %2 /MIR /COPYALL /R:0 /W:0 /LOG+:%LOG_FILE% /NP /NDL /TEE /XJD /XJF
exit /b 0

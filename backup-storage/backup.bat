@echo off

REM D to E
robocopy d:\@temp e:\@temp /MIR /COPYALL /R:0 /W:0 /LOG+:D:\robocopy.log /NP /NDL /TEE /XJD /XJF
robocopy d:\Z01_image e:\Z01_image /MIR /COPYALL /R:0 /W:0 /LOG+:D:\robocopy.log /NP /NDL /TEE /XJD /XJF
robocopy d:\Z02_word e:\Z02_word /MIR /COPYALL /R:0 /W:0 /LOG+:D:\robocopy.log /NP /NDL /TEE /XJD /XJF
robocopy d:\Z03_music e:\Z03_music /MIR /COPYALL /R:0 /W:0 /LOG+:D:\robocopy.log /NP /NDL /TEE /XJD /XJF
robocopy d:\Z04_comic e:\Z04_comic /MIR /COPYALL /R:0 /W:0 /LOG+:D:\robocopy.log /NP /NDL /TEE /XJD /XJF
robocopy d:\Z04_comic_comp e:\Z04_comic_comp /MIR /COPYALL /R:0 /W:0 /LOG+:D:\robocopy.log /NP /NDL /TEE /XJD /XJF
robocopy d:\Z05_rom e:\Z05_rom /MIR /COPYALL /R:0 /W:0 /LOG+:D:\robocopy.log /NP /NDL /TEE /XJD /XJF
robocopy d:\Z06_photo e:\Z06_photo /MIR /COPYALL /R:0 /W:0 /LOG+:D:\robocopy.log /NP /NDL /TEE /XJD /XJF

REM D TO F
robocopy d:\@temp f:\@temp /MIR /COPYALL /R:0 /W:0 /LOG+:D:\robocopy.log /NP /NDL /TEE /XJD /XJF
robocopy d:\Z01_image f:\Z01_image /MIR /COPYALL /R:0 /W:0 /LOG+:D:\robocopy.log /NP /NDL /TEE /XJD /XJF
robocopy d:\Z02_word f:\Z02_word /MIR /COPYALL /R:0 /W:0 /LOG+:D:\robocopy.log /NP /NDL /TEE /XJD /XJF
robocopy d:\Z03_music f:\Z03_music /MIR /COPYALL /R:0 /W:0 /LOG+:D:\robocopy.log /NP /NDL /TEE /XJD /XJF
robocopy d:\Z04_comic f:\Z04_comic /MIR /COPYALL /R:0 /W:0 /LOG+:D:\robocopy.log /NP /NDL /TEE /XJD /XJF
robocopy d:\Z04_comic_comp f:\Z04_comic_comp /MIR /COPYALL /R:0 /W:0 /LOG+:D:\robocopy.log /NP /NDL /TEE /XJD /XJF
robocopy d:\Z05_rom f:\Z05_rom /MIR /COPYALL /R:0 /W:0 /LOG+:D:\robocopy.log /NP /NDL /TEE /XJD /XJF
robocopy d:\Z06_photo f:\Z06_photo /MIR /COPYALL /R:0 /W:0 /LOG+:D:\robocopy.log /NP /NDL /TEE /XJD /XJF

REM E TO F (only video files)
robocopy e:\Z09_video f:\Z09_video /MIR /COPYALL /R:0 /W:0 /LOG+:D:\robocopy.log /NP /NDL /TEE /XJD /XJF
robocopy e:\Z09_video_anime f:\Z09_video_anime /MIR /COPYALL /R:0 /W:0 /LOG+:D:\robocopy.log /NP /NDL /TEE /XJD /XJF

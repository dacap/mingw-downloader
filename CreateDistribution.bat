mkdir MinGW-Downloader
mkdir MinGW-Downloader\tests
copy 7za.exe MinGW-Downloader
copy wget.exe MinGW-Downloader
copy README.url MinGW-Downloader
copy MinGW-4.5-Downloader.bat MinGW-Downloader
copy tests\test_program.c MinGW-Downloader\tests
copy tests\test_program.cpp MinGW-Downloader\tests
7za.exe a MinGW-Downloader.zip MinGW-Downloader
pause

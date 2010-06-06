@echo off
set MINGW_NAME=MinGW-4.5



echo //-------------------------------------------------------------------------//
echo // Starting %MINGW_NAME% Installation

mkdir _downloaded
mkdir _downloaded2



echo //-------------------------------------------------------------------------//
echo // Downloading packages...

echo // - C compiler and shared runtime
wget -q -O_downloaded/gcc-core-4.5.0-1-mingw32-bin.tar.lzma http://prdownloads.sourceforge.net/mingw/gcc-core-4.5.0-1-mingw32-bin.tar.lzma?download
wget -q -O_downloaded/libgcc-4.5.0-1-mingw32-dll-1.tar.lzma http://prdownloads.sourceforge.net/mingw/libgcc-4.5.0-1-mingw32-dll-1.tar.lzma?download

echo // - C++ compiler and shared runtime
wget -q -O_downloaded/gcc-c++-4.5.0-1-mingw32-bin.tar.lzma http://prdownloads.sourceforge.net/mingw/gcc-c%%2B%%2B-4.5.0-1-mingw32-bin.tar.lzma?download
wget -q -O_downloaded/libstdc++-4.5.0-1-mingw32-dll-6.tar.lzma http://prdownloads.sourceforge.net/mingw/libstdc%%2B%%2B-4.5.0-1-mingw32-dll-6.tar.lzma?download

echo // - Binutils
wget -q -O_downloaded/binutils-2.20.1-2-mingw32-bin.tar.gz http://prdownloads.sourceforge.net/mingw/binutils-2.20.1-2-mingw32-bin.tar.gz?download

echo // - MinGW runtime
wget -q -O_downloaded/mingwrt-3.18-mingw32-dll.tar.gz http://prdownloads.sourceforge.net/mingw/mingwrt-3.18-mingw32-dll.tar.gz?download
wget -q -O_downloaded/mingwrt-3.18-mingw32-dev.tar.gz http://prdownloads.sourceforge.net/mingw/mingwrt-3.18-mingw32-dev.tar.gz?download

echo // - Win32 API
wget -q -O_downloaded/w32api-3.14-mingw32-dev.tar.gz http://prdownloads.sourceforge.net/mingw/w32api-3.14-mingw32-dev.tar.gz?download

echo // - Runtime libraries for GCC
wget -q -O_downloaded/mpc-0.8.1-1-mingw32-dev.tar.lzma http://prdownloads.sourceforge.net/mingw/mpc-0.8.1-1-mingw32-dev.tar.lzma?download
wget -q -O_downloaded/mpfr-2.4.1-1-mingw32-dev.tar.lzma http://prdownloads.sourceforge.net/mingw/mpfr-2.4.1-1-mingw32-dev.tar.lzma?download
wget -q -O_downloaded/gmp-5.0.1-1-mingw32-dev.tar.lzma http://prdownloads.sourceforge.net/mingw/gmp-5.0.1-1-mingw32-dev.tar.lzma?download
wget -q -O_downloaded/pthreads-w32-2.8.0-3-mingw32-dev.tar.lzma http://prdownloads.sourceforge.net/mingw/pthreads-w32-2.8.0-3-mingw32-dev.tar.lzma?download
wget -q -O_downloaded/libmpc-0.8.1-1-mingw32-dll-2.tar.lzma http://prdownloads.sourceforge.net/mingw/libmpc-0.8.1-1-mingw32-dll-2.tar.lzma?download
wget -q -O_downloaded/libmpfr-2.4.1-1-mingw32-dll-1.tar.lzma http://prdownloads.sourceforge.net/mingw/libmpfr-2.4.1-1-mingw32-dll-1.tar.lzma?download
wget -q -O_downloaded/libgmp-5.0.1-1-mingw32-dll-10.tar.lzma http://prdownloads.sourceforge.net/mingw/libgmp-5.0.1-1-mingw32-dll-10.tar.lzma?download
wget -q -O_downloaded/libpthread-2.8.0-3-mingw32-dll-2.tar.lzma http://prdownloads.sourceforge.net/mingw/libpthread-2.8.0-3-mingw32-dll-2.tar.lzma?download

echo // - Shared library for OpenMP support
wget -q -O_downloaded/libgomp-4.5.0-1-mingw32-dll-1.tar.lzma http://prdownloads.sourceforge.net/mingw/libgomp-4.5.0-1-mingw32-dll-1.tar.lzma?download

echo // - Shared library for stack protection support
wget -q -O_downloaded/libssp-4.5.0-1-mingw32-dll-0.tar.lzma http://prdownloads.sourceforge.net/mingw/libssp-4.5.0-1-mingw32-dll-0.tar.lzma?download

echo // - Debugger (gdb)
wget -q -O_downloaded/gdb-7.1-2-mingw32-bin.tar.gz http://prdownloads.sourceforge.net/mingw/gdb-7.1-2-mingw32-bin.tar.gz?download
wget -q -O_downloaded/libexpat-2.0.1-1-mingw32-dll-1.tar.gz http://prdownloads.sourceforge.net/mingw/libexpat-2.0.1-1-mingw32-dll-1.tar.gz?download

echo // - mingw32-make
wget -q -O_downloaded/make-3.81-20090914-mingw32-bin.tar.gz http://prdownloads.sourceforge.net/mingw/make-3.81-20090914-mingw32-bin.tar.gz?download



echo //-------------------------------------------------------------------------//
echo // Uncompressing files...

7za.exe x -bd -y -o_downloaded2 _downloaded/gcc-core-4.5.0-1-mingw32-bin.tar.lzma >NUL
7za.exe x -bd -y -o_downloaded2 _downloaded/libgcc-4.5.0-1-mingw32-dll-1.tar.lzma >NUL
7za.exe x -bd -y -o_downloaded2 _downloaded/gcc-c++-4.5.0-1-mingw32-bin.tar.lzma >NUL
7za.exe x -bd -y -o_downloaded2 _downloaded/libstdc++-4.5.0-1-mingw32-dll-6.tar.lzma >NUL
7za.exe x -bd -y -o_downloaded2 _downloaded/binutils-2.20.1-2-mingw32-bin.tar.gz >NUL
7za.exe x -bd -y -o_downloaded2 _downloaded/mingwrt-3.18-mingw32-dll.tar.gz >NUL
7za.exe x -bd -y -o_downloaded2 _downloaded/mingwrt-3.18-mingw32-dev.tar.gz >NUL
7za.exe x -bd -y -o_downloaded2 _downloaded/w32api-3.14-mingw32-dev.tar.gz >NUL
7za.exe x -bd -y -o_downloaded2 _downloaded/mpc-0.8.1-1-mingw32-dev.tar.lzma >NUL
7za.exe x -bd -y -o_downloaded2 _downloaded/mpfr-2.4.1-1-mingw32-dev.tar.lzma >NUL
7za.exe x -bd -y -o_downloaded2 _downloaded/gmp-5.0.1-1-mingw32-dev.tar.lzma >NUL
7za.exe x -bd -y -o_downloaded2 _downloaded/pthreads-w32-2.8.0-3-mingw32-dev.tar.lzma >NUL
7za.exe x -bd -y -o_downloaded2 _downloaded/libmpc-0.8.1-1-mingw32-dll-2.tar.lzma >NUL
7za.exe x -bd -y -o_downloaded2 _downloaded/libmpfr-2.4.1-1-mingw32-dll-1.tar.lzma >NUL
7za.exe x -bd -y -o_downloaded2 _downloaded/libgmp-5.0.1-1-mingw32-dll-10.tar.lzma >NUL
7za.exe x -bd -y -o_downloaded2 _downloaded/libpthread-2.8.0-3-mingw32-dll-2.tar.lzma >NUL
7za.exe x -bd -y -o_downloaded2 _downloaded/libgomp-4.5.0-1-mingw32-dll-1.tar.lzma >NUL
7za.exe x -bd -y -o_downloaded2 _downloaded/libssp-4.5.0-1-mingw32-dll-0.tar.lzma >NUL
7za.exe x -bd -y -o_downloaded2 _downloaded/gdb-7.1-2-mingw32-bin.tar.gz >NUL
7za.exe x -bd -y -o_downloaded2 _downloaded/libexpat-2.0.1-1-mingw32-dll-1.tar.gz >NUL
7za.exe x -bd -y -o_downloaded2 _downloaded/make-3.81-20090914-mingw32-bin.tar.gz >NUL



echo //-------------------------------------------------------------------------//
echo // Unarchiving files...

7za.exe x -bd -y -o%MINGW_NAME% _downloaded2/gcc-core-4.5.0-1-mingw32-bin.tar >NUL
7za.exe x -bd -y -o%MINGW_NAME% _downloaded2/libgcc-4.5.0-1-mingw32-dll-1.tar >NUL
7za.exe x -bd -y -o%MINGW_NAME% _downloaded2/gcc-c++-4.5.0-1-mingw32-bin.tar >NUL
7za.exe x -bd -y -o%MINGW_NAME% _downloaded2/libstdc++-4.5.0-1-mingw32-dll-6.tar >NUL
7za.exe x -bd -y -o%MINGW_NAME% _downloaded2/binutils-2.20.1-2-mingw32-bin.tar >NUL
7za.exe x -bd -y -o%MINGW_NAME% _downloaded2/mingwrt-3.18-mingw32-dll.tar >NUL
7za.exe x -bd -y -o%MINGW_NAME% _downloaded2/mingwrt-3.18-mingw32-dev.tar >NUL
7za.exe x -bd -y -o%MINGW_NAME% _downloaded2/w32api-3.14-mingw32-dev.tar >NUL
7za.exe x -bd -y -o%MINGW_NAME% _downloaded2/mpc-0.8.1-1-mingw32-dev.tar >NUL
7za.exe x -bd -y -o%MINGW_NAME% _downloaded2/mpfr-2.4.1-1-mingw32-dev.tar >NUL
7za.exe x -bd -y -o%MINGW_NAME% _downloaded2/gmp-5.0.1-1-mingw32-dev.tar >NUL
7za.exe x -bd -y -o%MINGW_NAME% _downloaded2/pthreads-w32-2.8.0-3-mingw32-dev.tar >NUL
7za.exe x -bd -y -o%MINGW_NAME% _downloaded2/libmpc-0.8.1-1-mingw32-dll-2.tar >NUL
7za.exe x -bd -y -o%MINGW_NAME% _downloaded2/libmpfr-2.4.1-1-mingw32-dll-1.tar >NUL
7za.exe x -bd -y -o%MINGW_NAME% _downloaded2/libgmp-5.0.1-1-mingw32-dll-10.tar >NUL
7za.exe x -bd -y -o%MINGW_NAME% _downloaded2/libpthread-2.8.0-3-mingw32-dll-2.tar >NUL
7za.exe x -bd -y -o%MINGW_NAME% _downloaded2/libgomp-4.5.0-1-mingw32-dll-1.tar >NUL
7za.exe x -bd -y -o%MINGW_NAME% _downloaded2/libssp-4.5.0-1-mingw32-dll-0.tar >NUL
7za.exe x -bd -y -o%MINGW_NAME% _downloaded2/gdb-7.1-2-mingw32-bin.tar >NUL
7za.exe x -bd -y -o%MINGW_NAME% _downloaded2/libexpat-2.0.1-1-mingw32-dll-1.tar >NUL
7za.exe x -bd -y -o%MINGW_NAME% _downloaded2/make-3.81-20090914-mingw32-bin.tar >NUL



echo //-------------------------------------------------------------------------//
echo // Testing C and C++ compilers...

set PATH=%CD%\%MINGW_NAME%\bin;%PATH%

gcc -o tests/test_c.exe tests/test_program.c
if not ERRORLEVEL 0 goto error

g++ -o tests/test_cpp.exe tests/test_program.cpp -static-libstdc++
if not ERRORLEVEL 0 goto error

tests\test_c.exe
tests\test_cpp.exe



echo //-------------------------------------------------------------------------//
echo // Removing temporary files...

del tests\test_c.exe
del tests\test_cpp.exe
del _downloaded\gcc-core-4.5.0-1-mingw32-bin.tar.lzma
del _downloaded\libgcc-4.5.0-1-mingw32-dll-1.tar.lzma
del _downloaded\gcc-c++-4.5.0-1-mingw32-bin.tar.lzma
del _downloaded\libstdc++-4.5.0-1-mingw32-dll-6.tar.lzma
del _downloaded\binutils-2.20.1-2-mingw32-bin.tar.gz
del _downloaded\mingwrt-3.18-mingw32-dll.tar.gz
del _downloaded\mingwrt-3.18-mingw32-dev.tar.gz
del _downloaded\w32api-3.14-mingw32-dev.tar.gz
del _downloaded\mpc-0.8.1-1-mingw32-dev.tar.lzma
del _downloaded\mpfr-2.4.1-1-mingw32-dev.tar.lzma
del _downloaded\gmp-5.0.1-1-mingw32-dev.tar.lzma
del _downloaded\pthreads-w32-2.8.0-3-mingw32-dev.tar.lzma
del _downloaded\libmpc-0.8.1-1-mingw32-dll-2.tar.lzma
del _downloaded\libmpfr-2.4.1-1-mingw32-dll-1.tar.lzma
del _downloaded\libgmp-5.0.1-1-mingw32-dll-10.tar.lzma
del _downloaded\libpthread-2.8.0-3-mingw32-dll-2.tar.lzma
del _downloaded\libgomp-4.5.0-1-mingw32-dll-1.tar.lzma
del _downloaded\libssp-4.5.0-1-mingw32-dll-0.tar.lzma
del _downloaded\gdb-7.1-2-mingw32-bin.tar.gz
del _downloaded\libexpat-2.0.1-1-mingw32-dll-1.tar.gz
del _downloaded\make-3.81-20090914-mingw32-bin.tar.gz
del _downloaded2\gcc-core-4.5.0-1-mingw32-bin.tar
del _downloaded2\libgcc-4.5.0-1-mingw32-dll-1.tar
del _downloaded2\gcc-c++-4.5.0-1-mingw32-bin.tar
del _downloaded2\libstdc++-4.5.0-1-mingw32-dll-6.tar
del _downloaded2\binutils-2.20.1-2-mingw32-bin.tar
del _downloaded2\mingwrt-3.18-mingw32-dll.tar
del _downloaded2\mingwrt-3.18-mingw32-dev.tar
del _downloaded2\w32api-3.14-mingw32-dev.tar
del _downloaded2\mpc-0.8.1-1-mingw32-dev.tar
del _downloaded2\mpfr-2.4.1-1-mingw32-dev.tar
del _downloaded2\gmp-5.0.1-1-mingw32-dev.tar
del _downloaded2\pthreads-w32-2.8.0-3-mingw32-dev.tar
del _downloaded2\libmpc-0.8.1-1-mingw32-dll-2.tar
del _downloaded2\libmpfr-2.4.1-1-mingw32-dll-1.tar
del _downloaded2\libgmp-5.0.1-1-mingw32-dll-10.tar
del _downloaded2\libpthread-2.8.0-3-mingw32-dll-2.tar
del _downloaded2\libgomp-4.5.0-1-mingw32-dll-1.tar
del _downloaded2\libssp-4.5.0-1-mingw32-dll-0.tar
del _downloaded2\gdb-7.1-2-mingw32-bin.tar
del _downloaded2\libexpat-2.0.1-1-mingw32-dll-1.tar
del _downloaded2\make-3.81-20090914-mingw32-bin.tar
rmdir _downloaded
rmdir _downloaded2



echo //-------------------------------------------------------------------------//
echo // SUCCESS
echo //-------------------------------------------------------------------------//
echo //
echo // You have %MINGW_NAME% ready to use in the following path:
echo // %CD%\%MINGW_NAME%
echo //
echo // You can use Run-cmd-with-Mingw-4.5.bat to use gcc, g++, etc. from the
echo // command line if you do not want to modify your PATH variable.
echo //

echo @echo off                                 >Run-cmd-with-%MINGW_NAME%.bat
echo set PATH=%%CD%%\%MINGW_NAME%\bin;%%PATH%% >>Run-cmd-with-%MINGW_NAME%.bat
echo cmd                                       >>Run-cmd-with-%MINGW_NAME%.bat

goto end



REM Errors
:error
echo //-------------------------------------------------------------------------//
echo // Error downloading, installing, or testing the compiler



REM End of program
:end
echo //-------------------------------------------------------------------------//
pause

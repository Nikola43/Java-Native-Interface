@echo off

javac LeerTeclasUsandoC.java
echo Compilacion fichero ".java" completada correctamente
echo.

javah LeerTeclasUsandoC
echo Generacion del fichero ".h" completada correctamente
echo.

C:\mingw-w64\x86_64-5.4.0-win32-seh-rt_v5-rev0\mingw64\bin\gcc leerTeclasC.c -o leerTeclasC.dll -m64 -shared -I "C:\Program Files\Java\jdk1.8.0_121\include" -I "C:\Program Files\Java\jdk1.8.0_121\include\win32"
echo Compilacion de la libreria ".dll" completada correctamente
echo.

echo Ejecutando programa...
echo.
java LeerTeclasUsandoC

pause


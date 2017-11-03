@echo off

javac HelloWorld.java
echo Compilacion fichero ".java" completada correctamente
echo.

javah HelloWorld
echo Generacion del fichero ".h" completada correctamente
echo.

gcc ctest.c -o ctest.dll -m64 -shared -I "C:\Program Files\Java\jdk1.8.0_111\include" -I "C:\Program Files\Java\jdk1.8.0_111\include\win32"
echo Compilacion de la libreria ".dll" completada correctamente
echo.

echo Ejecutando programa...
echo.
java HelloWorld


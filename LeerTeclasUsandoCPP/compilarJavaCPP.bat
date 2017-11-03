@echo off

javac LeerTeclasUsandoCPP.java
javac LeerTeclasUsandoCPP.java
echo Compilacion fichero ".java" completada correctamente
echo.

javah LeerTeclasUsandoCPP
echo Generacion del fichero ".h" completada correctamente
echo.

g++ leerTeclasCPP.cpp -o leerTeclasCPP.dll -m64 -shared -I "C:\Program Files\Java\jdk1.8.0_131\include" -I "C:\Program Files\Java\jdk1.8.0_131\include\win32"
echo Compilacion de la libreria ".dll" completada correctamente
echo.

javac Main.java

echo Ejecutando programa...
echo.


java Main
pause


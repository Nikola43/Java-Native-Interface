#!/bin/bash

javac HelloWorld.java
if [ $? == 0 ]; then
	echo "Compilacion fichero '.java' completada correctamente"
else
	echo "Error compilando fichero java"
fi
echo " "

javah HelloWorld
if [ $? == 0 ]; then
	echo "Generacion del fichero '.h' completada correctamente"
else
	echo "Error generando el fichero '.h'"
fi
echo " "

gcc ctest.c -o ctest.so -m64 -shared -I "/Library/Java/JavaVirtualMachines/jdk1.8.0_111.jdk/Contents/Home/include" -I "/Library/Java/JavaVirtualMachines/jdk1.8.0_111.jdk/Contents/Home/include/darwin/"
if [ $? == 0 ]; then
	echo "Compilacion de la libreria '.so' completada correctamente"
else
	echo "Error compilando la libreria '.so'"
fi
echo " "

echo "Ejecutando programa..."
echo " "
java HelloWorld


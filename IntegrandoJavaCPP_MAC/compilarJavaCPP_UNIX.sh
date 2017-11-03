#!/bin/bash

javac HelloWorld.java
echo Compilacion fichero ".java" completada correctamente
echo " "

javah -jni HelloWorld
echo Generacion del fichero ".h" completada correctamente
echo " "


g++ -I "/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK/Headers" -I "/Library/Java/JavaVirtualMachines/jdk1.8.0_131.jdk/Contents/Home/include" -I "/Library/Java/JavaVirtualMachines/jdk1.8.0_131.jdk/Contents/Home/include/darwin" -c HelloWorld.cpp

g++ -dynamiclib -o libhelloworld.jnilib HelloWorld.o
echo Compilacion de la libreria ".dll" completada correctamente
echo " "

echo Ejecutando programa...
echo " "
java -Djava.library.path=. HelloWorld


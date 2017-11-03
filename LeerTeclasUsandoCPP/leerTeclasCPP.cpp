//Inclumimos librerias basicas
#include <jni.h>
#include "LeerTeclasUsandoCPP.h"
#include <iostream>
#include <conio.h>
using namespace std;

JNIEXPORT jint JNICALL Java_LeerTeclasUsandoCPP_leerTecla(JNIEnv *, jobject)
{
    //Variable donde guardaremos el codigo de la tecla pulsada
    int teclaPulsada;

    //Leemos la tecla pulsada 
	teclaPulsada = _getch();

    return (teclaPulsada);
}


JNIEXPORT jboolean JNICALL Java_LeerTeclasUsandoCPP_hayTeclaPulsada(JNIEnv *, jobject)
{
	jboolean teclaPulsada = false;

	//Si hay cualquier tecla pulsada
    if ( _kbhit() )
    {
    	teclaPulsada = true;
    }

    return (teclaPulsada);
}


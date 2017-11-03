//Inclumimos librerias basicas
#include <stdio.h> //Libreria basica de entrada salida c
#include <conio.h> //Libreria que contiene el metodo getch()
#include <jni.h>

#define ESC 27
#define ENTER 13
#define FLECHA_ARRIBA 72
#define FLECHA_ABAJO 80
#define FLECHA_IZQUIERDA 75
#define FLECHA_DERECHA 77

JNIEXPORT int JNICALL Java_LeerTeclasUsandoC_leerTecla(JNIEnv * env, jobject jobj)
{
    //Guardaremos la tecla pulsada en un char
    char teclaPulsada;
    
    
		//leemos la tecla pulsada
    	teclaPulsada = _getch();
		
    
    return ((int)teclaPulsada);
}

#include <jni.h>
#include <stdio.h>

//Usamos la misma cabecera del fuchero .h generado mediante javah
JNIEXPORT void JNICALL Java_HelloWorld_helloFromC(JNIEnv * env, jobject jobj)
{
    printf("Hello from C!\n");
}

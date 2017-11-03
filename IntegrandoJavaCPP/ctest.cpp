#include <jni.h>
#include "HelloWorld.h"
#include <iostream>

JNIEXPORT jint JNICALL Java_HelloWorld_helloFromC(JNIEnv * env, jobject jobj)
{
    std::cout << "Hello World!";
    return(56);
}

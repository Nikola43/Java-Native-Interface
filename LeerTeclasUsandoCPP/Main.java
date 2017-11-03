public class Main
{
	public static  void main(String argv[]) 
    {
    	//Definicion de constante de salida
    	final int ESC = 27; 

    	//Instanciamos un objeto tipo 'LeerTeclasUsandoCPP'
        LeerTeclasUsandoCPP teclas = new LeerTeclasUsandoCPP();

        //Creamos una variable para almacenar el codigo ASCII de la tecla pulsada
        int teclaPulsada = 0;

		System.out.println("Pulsa cualquier tecla");
        
        //Mientras la tecla pulsada sea distinto de ESC
        while( teclaPulsada != ESC )
        {
        	//Si se detecta alguna tecla pulsada
            if ( teclas.hayTeclaPulsada() == true )
            {
            	//leemos la tecla usando el metodo escrito en C** que esta dentro de la libreria que compilamos
            	teclaPulsada = teclas.leerTecla(); 

            	//Imprimimos el codigo de la tecla pulsada
            	System.out.println("\nCodigo ASCII: "+teclaPulsada+"    Tecla pulsada: "+(char)teclaPulsada);
            }   
        }
    }
}


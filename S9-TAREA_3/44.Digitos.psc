Proceso contadorDigitosIndividuales
    Definir palabra Como Cadena;
    Definir contador, i, long Como Entero;
    Definir letra Como Caracter;
    contador <- 0;
	
    Escribir "Ingrese una palabra:";
    Leer palabra;
    long <- Longitud(palabra);
	
    Para i <- 1 Hasta long Hacer
        letra <- Subcadena(palabra, i, 1);
		
        Si letra = "0" O letra = "1" O letra = "2" O letra = "3" O letra = "4" O letra = "5" O letra = "6" O letra = "7" O letra = "8" O letra = "9" Entonces
            contador <- contador + 1;
        FinSi
    FinPara
	
    Escribir "La palabra ", palabra, " contiene ", contador, " dígitos individuales.";
FinProceso
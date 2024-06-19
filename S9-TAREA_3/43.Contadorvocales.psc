Proceso contadorDeVocales
    Definir palabra Como Cadena;
    Definir contador, i, long Como Entero;
    Definir letra Como Caracter;
    contador <- 0;
    i <- 1;
    Escribir "Por favor, ingresa una palabra:";
    Leer palabra;
    long <- Longitud(palabra);
	
    Mientras i <= long Hacer
        letra <- Subcadena (palabra, i, 1);
        Si letra = "a" O letra = "e" O letra = "i" O letra = "o" O letra = "u" O letra = "A" O letra = "E" O letra = "I" O letra = "O" O letra = "U" Entonces
            contador <- contador + 1;
        FinSi
		i <- i + 1;
    FinMientras
	
    Escribir "La palabra ", palabra, " contiene ", contador, " vocales.";
FinProceso
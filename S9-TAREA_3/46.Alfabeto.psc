Proceso contadorDeLetras
    Definir palabra Como Cadena;
    Definir contador, i, longi Como Entero;
    Definir letra Como Caracter;
    contador <- 0;
	
    Escribir "Ingrese una palabra:";
    Leer palabra;
	
    longi <- Longitud(palabra);
	
    Para i <- 1 Hasta longi Hacer
        letra <- Subcadena(palabra, i, 1);
		
        Si (letra >= "a" Y letra <= "z") O (letra >= "A" Y letra <= "Z") Entonces
            contador <- contador + 1;
        FinSi
    FinPara
	
    Escribir "La palabra ", palabra, " contiene ", contador, " letras del alfabeto.";
FinProceso

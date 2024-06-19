Proceso ContarCaracterEnFrase
        Escribir "Ingrese una frase: ";
        Leer frase;
        
        Escribir "Ingrese el carácter que desea contar en la frase: ";
        Leer caracter;

        Definir cantidad Como Entero;
        cantidad <- ContarCaracter(frase, caracter);
        
        Escribir "El carácter ", caracter, " aparece ", cantidad, " veces en la frase.";
FinProceso

Funcion ContarCaracter(frase)
	Definir contador Como Entero;
	contador <- 0;
	
	Para cada c en frase Hacer
		Si c = caracter Entonces
			contador <- contador + 1;
		FinSi
	FinPara
	
	Escribir contador;
FinFuncion

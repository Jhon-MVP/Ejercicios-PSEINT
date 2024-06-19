Algoritmo ParOImpar
    Proceso Principal
        Escribir "Ingrese un número entero: ";
        Leer numero;
        
        ParOImpar(numero);
        
        Si esPar Entonces
            Escribir "El número ", numero, " es par.";
        Sino
            Escribir "El número ", numero, " es impar.";
        FinSi
	FinProceso

Funcion ParOImpar(numero)
	Definir esPar Como Logico;
	
	Si numero % 2 = 0 Entonces
		esPar <- Verdadero;
	Sino
		esPar <- Falso;
	FinSi
FinFuncion

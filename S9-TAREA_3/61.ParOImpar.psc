Algoritmo ParOImpar
    Proceso Principal
        Escribir "Ingrese un n�mero entero: ";
        Leer numero;
        
        ParOImpar(numero);
        
        Si esPar Entonces
            Escribir "El n�mero ", numero, " es par.";
        Sino
            Escribir "El n�mero ", numero, " es impar.";
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

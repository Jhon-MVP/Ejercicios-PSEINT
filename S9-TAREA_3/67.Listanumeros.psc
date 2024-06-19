Proceso SumarListaNumeros
        Definir n, i Como Entero;
        Escribir "Ingrese la cantidad de números a sumar: ";
        Leer n;
        
        Dimension numeros[100000000];

        Para i <- 1 Hasta n Hacer
            Escribir "Ingrese el número ", i, ": ";
            Leer numeros[i];
        FinPara

        Definir suma Como Real;
        suma <- SumarNumeros(numeros, n);
        
        Escribir "La suma de los números ingresados es: ", suma;
FinProceso

Funcion SumarNumeros(lista[], longitud)    
	Definir resultado Como Real;
	resultado <- 0;

	Para i <- 1 Hasta longitud Hacer
		resultado <- resultado + lista[i];
	FinPara

	Escribir  resultado;
FinFuncion
FinAlgoritmo

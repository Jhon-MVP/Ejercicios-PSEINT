Proceso DeterminarMayorDeTres
    Definir numero1, numero2, numero3 Como Real;
    Escribir "Ingrese el primer n�mero: ";
    Leer numero1;
    Escribir "Ingrese el segundo n�mero: ";
    Leer numero2;
    Escribir "Ingrese el tercer n�mero: ";
    Leer numero3;
	

    Si numero1 = numero2 y numero2 = numero3 Entonces
        Escribir "Los tres n�meros son iguales.";
    Sino
        Si numero1 >= numero2 y numero1 >= numero3 Entonces
            Escribir "El primer n�mero ", numero1, " es el mayor.";
        Sino Si numero2 >= numero1 y numero2 >= numero3 Entonces
				Escribir "El segundo n�mero ", numero2, " es el mayor.";
			Sino
				Escribir "El tercer n�mero ", numero3, " es el mayor.";
			FinSi
		FinSi
	FinSi
	
FinProceso
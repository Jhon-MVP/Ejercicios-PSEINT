Proceso DeterminarMayorDeTres
    Definir numero1, numero2, numero3 Como Real;
    Escribir "Ingrese el primer número: ";
    Leer numero1;
    Escribir "Ingrese el segundo número: ";
    Leer numero2;
    Escribir "Ingrese el tercer número: ";
    Leer numero3;
	

    Si numero1 = numero2 y numero2 = numero3 Entonces
        Escribir "Los tres números son iguales.";
    Sino
        Si numero1 >= numero2 y numero1 >= numero3 Entonces
            Escribir "El primer número ", numero1, " es el mayor.";
        Sino Si numero2 >= numero1 y numero2 >= numero3 Entonces
				Escribir "El segundo número ", numero2, " es el mayor.";
			Sino
				Escribir "El tercer número ", numero3, " es el mayor.";
			FinSi
		FinSi
	FinSi
	
FinProceso
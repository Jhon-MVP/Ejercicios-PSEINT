Proceso CompararNumeros
    Definir numero1, numero2 Como Real;
    Escribir "Ingrese el primer n�mero: ";
    Leer numero1;
    Escribir "Ingrese el segundo n�mero: ";
    Leer numero2;

    Si numero1 = numero2 Entonces
        Escribir "Los n�meros son iguales.";
    Sino Si numero1 < numero2 Entonces
			Escribir "El primer n�mero es menor que el segundo n�mero.";
		Sino
			Escribir "El primer n�mero es mayor que el segundo n�mero.";
		FinSi
	FinSi
FinProceso
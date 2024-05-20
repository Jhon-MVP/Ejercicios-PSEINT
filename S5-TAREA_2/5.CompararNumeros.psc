Proceso CompararNumeros
    Definir numero1, numero2 Como Real;
    Escribir "Ingrese el primer número: ";
    Leer numero1;
    Escribir "Ingrese el segundo número: ";
    Leer numero2;

    Si numero1 = numero2 Entonces
        Escribir "Los números son iguales.";
    Sino Si numero1 < numero2 Entonces
			Escribir "El primer número es menor que el segundo número.";
		Sino
			Escribir "El primer número es mayor que el segundo número.";
		FinSi
	FinSi
FinProceso
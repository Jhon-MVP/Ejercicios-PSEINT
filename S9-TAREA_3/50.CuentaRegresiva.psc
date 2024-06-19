Proceso cuentaRegresiva
	Definir numero Como Entero;
	Escribir "Ingrese un número entero positivo:";
	Leer numero;
	Si numero <= 0 Entonces
		Escribir "El número ingresado no es válido. Debe ser un número entero positivo.";
	Sino
		Escribir "Cuenta regresiva desde ", numero, " hasta 1:";
		Mientras numero >= 1 Hacer
			Escribir numero;
			numero <- numero - 1;
		FinMientras
	FinSi
FinProceso
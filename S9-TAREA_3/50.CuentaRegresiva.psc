Proceso cuentaRegresiva
	Definir numero Como Entero;
	Escribir "Ingrese un n�mero entero positivo:";
	Leer numero;
	Si numero <= 0 Entonces
		Escribir "El n�mero ingresado no es v�lido. Debe ser un n�mero entero positivo.";
	Sino
		Escribir "Cuenta regresiva desde ", numero, " hasta 1:";
		Mientras numero >= 1 Hacer
			Escribir numero;
			numero <- numero - 1;
		FinMientras
	FinSi
FinProceso
Proceso sumaNumeros
	Definir num, suma Como Entero;
	suma <- 0;
	Escribir "Ingrese n�meros enteros positivos uno por uno (ingrese un n�mero negativo para terminar):";
		Leer num;
		Mientras num >= 0 Hacer
			suma <- suma + num;
			Leer num;
		FinMientras
		
		Escribir "La suma de los n�meros ingresados es:", suma;
FinProceso

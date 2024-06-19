Proceso sumaNumeros
	Definir num, suma Como Entero;
	suma <- 0;
	Escribir "Ingrese números enteros positivos uno por uno (ingrese un número negativo para terminar):";
		Leer num;
		Mientras num >= 0 Hacer
			suma <- suma + num;
			Leer num;
		FinMientras
		
		Escribir "La suma de los números ingresados es:", suma;
FinProceso

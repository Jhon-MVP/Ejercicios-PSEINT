Algoritmo DiaQuincena
	Definir dia Como Entero;
	Escribir "Por favor, ingrese un n�mero de d�a del mes (del 1 al 31):";
	Leer dia;
	Si dia >= 1 Y dia <= 15 Entonces
		Escribir "El d�a ingresado pertenece a la primera quincena.";
	Sino Si dia >= 16 Y dia <= 31 Entonces
			Escribir "El d�a ingresado pertenece a la segunda quincena.";
		Sino
			Escribir "El d�a ingresado no es v�lido.";
		FinSi
	FinSi
	
FinAlgoritmo

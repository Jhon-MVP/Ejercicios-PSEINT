Algoritmo AnioBisiesto
	Definir anio Como Entero;
	Escribir "Por favor, ingrese un año:";
	Leer anio;
	Si (anio % 4 = 0 Y anio % 100 <> 0) O (anio % 400 = 0) Entonces
		Escribir "El año ingresado es un año bisiesto.";
	Sino
		Escribir "El año ingresado no es un año bisiesto.";
	FinSi
FinAlgoritmo
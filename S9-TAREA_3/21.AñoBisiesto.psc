Algoritmo AnioBisiesto
	Definir anio Como Entero;
	Escribir "Por favor, ingrese un a�o:";
	Leer anio;
	Si (anio % 4 = 0 Y anio % 100 <> 0) O (anio % 400 = 0) Entonces
		Escribir "El a�o ingresado es un a�o bisiesto.";
	Sino
		Escribir "El a�o ingresado no es un a�o bisiesto.";
	FinSi
FinAlgoritmo
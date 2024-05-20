Proceso CalcularGananciaUvas
	Definir kilos, tamano Como Entero;
	Definir tipo Como Caracter;
	Definir total, precio Como Real;
	
	Escribir "Ingresa los kilos de uvas";
	Leer kilos;
	
	Escribir "Ingresa el precio por kilo";
	Leer precio;
	
	Escribir "Ingresa el tipo de uva: A o B";
	Leer tipo;
	
	Escribir "Ingresa el tamaño de la uva: 1 o 2";
	Leer tamano;
	
	Si tipo = "A" Entonces
		Si tamaño = 1 Entonces
			precio <- precio + 20;
		SiNo
			precio <- precio + 30;
		FinSi
	SiNo
		Si tamano = 1 Entonces
			precio <- precio - 30;
		SiNo
			precio <- precio - 50;
		FinSi
	FinSi
	total <- precio*kilos;
	Escribir "La ganancia por ",kilos," kilos de uva es: $",total;

FinProceso

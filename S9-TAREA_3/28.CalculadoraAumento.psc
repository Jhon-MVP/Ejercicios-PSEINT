Algoritmo CalculadoraSueldoConAumento
	Definir salarioActual, aumentoPorcentaje, nuevoSalario Como Real;
	Escribir "Ingrese su salario actual:";
	Leer salarioActual;
	Escribir "Ingrese el porcentaje de aumento que recibirá (%):";
	Leer aumentoPorcentaje;
	nuevoSalario <- salarioActual * (1 + aumentoPorcentaje / 100);
	Escribir "Su nuevo salario después del aumento es: ", nuevoSalario;
FinAlgoritmo

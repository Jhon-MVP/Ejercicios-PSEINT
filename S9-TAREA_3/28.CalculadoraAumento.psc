Algoritmo CalculadoraSueldoConAumento
	Definir salarioActual, aumentoPorcentaje, nuevoSalario Como Real;
	Escribir "Ingrese su salario actual:";
	Leer salarioActual;
	Escribir "Ingrese el porcentaje de aumento que recibir� (%):";
	Leer aumentoPorcentaje;
	nuevoSalario <- salarioActual * (1 + aumentoPorcentaje / 100);
	Escribir "Su nuevo salario despu�s del aumento es: ", nuevoSalario;
FinAlgoritmo

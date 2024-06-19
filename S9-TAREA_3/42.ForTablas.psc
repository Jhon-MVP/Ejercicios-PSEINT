Proceso tablaMultiplicar
	Definir numero, resultado, i Como Entero;
	Escribir "Ingrese un número para ver su tabla de multiplicar:";
	Leer numero;
	Para i <- 1 Hasta 12 Hacer
		resultado <- numero * i;
		Escribir numero, " x ", i, " = ", resultado;
	FinPara
FinProceso
Proceso TablaDeMultiplicar
	Definir num, i Como Entero;
	Escribir "Ingrese el número para ver su tabla de multiplicar:";
	Leer num;
	Escribir "Tabla de multiplicar del ", num, ":";
	Para i <- 1 Hasta 10 Hacer
		Escribir num, " x ", i, " = ", num * i;
	FinPara
FinProceso
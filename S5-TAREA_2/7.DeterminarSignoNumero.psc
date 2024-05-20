Proceso DeterminarSignoNumero
    Definir num Como Real;
    Escribir "Ingrese un número: ";
    Leer num;
	
    Si num = 0 Entonces
        Escribir "El número es neutro (cero).";
    Sino Si num > 0 Entonces
			Escribir "El número es positivo.";
		Sino
			Escribir "El número es negativo.";
		FinSi
	FinSi
	
FinProceso
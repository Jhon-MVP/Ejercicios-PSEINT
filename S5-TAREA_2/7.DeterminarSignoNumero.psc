Proceso DeterminarSignoNumero
    Definir num Como Real;
    Escribir "Ingrese un n�mero: ";
    Leer num;
	
    Si num = 0 Entonces
        Escribir "El n�mero es neutro (cero).";
    Sino Si num > 0 Entonces
			Escribir "El n�mero es positivo.";
		Sino
			Escribir "El n�mero es negativo.";
		FinSi
	FinSi
	
FinProceso
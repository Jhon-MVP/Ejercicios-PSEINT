Proceso MitadYDivisor
	Definir num1, num2, num3, num4 Como Entero;
	
    Escribir "Ingrese el primer n�mero: ";
    Leer num1;
	
    Escribir "Ingrese el segundo n�mero: ";
    Leer num2;
	
    Escribir "Ingrese el tercer n�mero: ";
    Leer num3;
	
    Escribir "Ingrese el cuarto n�mero: ";
    Leer num4;
	
    Si num2 = 2 * num1 Entonces
        Escribir num1, " es la mitad de ", num2;
    Sino
        Escribir num1, " no es la mitad de ", num2;
    FinSi
	
    Si num4 % num3 = 0 Entonces
        Escribir num3, " es divisor de ", num4;
    Sino
        Escribir num3, " no es divisor de ", num4;
    FinSi
FinProceso

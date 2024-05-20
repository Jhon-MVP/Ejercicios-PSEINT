Proceso DobleY20
	Definir num1, num2, num3 Como Entero;
	
    Escribir "Ingrese el primer número: ";
    Leer num1;
	
    Escribir "Ingrese el segundo número: ";
    Leer num2;
	
    Escribir "Ingrese el tercer número: ";
    Leer num3;
	
    Si num1 = 2 * num2 Y num1 = num3 * 0.8 Entonces
        Escribir num1, " es el doble de ", num2, " y un 20% menos que ", num3;
    Sino
        Escribir num1, " no cumple las condiciones especificadas.";
    FinSi
FinProceso

Proceso Calculadora
	Definir opcion, num1, num2, resultado Como Real;
	Escribir "Calculadora B�sica";
	Escribir "Por favor, seleccione una opci�n";
	Escribir "(1)suma, (2)resta, (3)multiplicacion, (4)division";
	Leer opcion;
	Si opcion = 1 Entonces
		Escribir "Ingrese el primer n�mero:";
		Leer num1;
		Escribir "Ingrese el segundo n�mero:";
		Leer num2;
		resultado <- num1 + num2;
		Escribir "El resultado de la suma es:", resultado;
	FinSi
	Si opcion = 2 Entonces
		Escribir "Ingrese el primer n�mero:";
		Leer num1;
		Escribir "Ingrese el segundo n�mero:";
		Leer num2;
		resultado <- num1 - num2;
		Escribir "El resultado de la resta es:",resultado;
	FinSi
	Si opcion = 3 Entonces
		Escribir "Ingrese el primer n�mero:";
		Leer num1;
		Escribir "Ingrese el segundo n�mero:";
		Leer num2;
		resultado <- num1 * num2;
		Escribir "El resultado de la multiplicaci�n es:",resultado;
	FinSi
	Si opcion = 4 Entonces
		Escribir "Ingrese el primer n�mero:";
		Leer num1;
		Escribir "Ingrese el segundo n�mero:";
		Leer num2;
		Si num2 = 0 Entonces
			Escribir "No se puede dividir por cero.";
		Sino
			resultado <- num1 / num2;
			Escribir "El resultado de la divisi�n es:",resultado;
		FinSi
	FinSi
FinProceso
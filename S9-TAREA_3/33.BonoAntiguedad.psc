Algoritmo CalculadoraBonoAntiguedad
	Definir aniosTrabajados Como Entero;
	Definir salario, bonoAntiguedad, PORCENTAJE_BONO Como Real;
	PORCENTAJE_BONO <- 0.05;
	Escribir "Ingrese cu�ntos a�os ha estado trabajando en la empresa:";
	Leer aniosTrabajados;
	Escribir "Ingrese su salario actual:";
	Leer salario;
	Si aniosTrabajados > 5 Entonces
		bonoAntiguedad <- salario * PORCENTAJE_BONO;
		Escribir "�Felicidades! Usted ha trabajado m�s de 5 a�os y recibe un bono de antig�edad del 5%.";
		Escribir "El monto del bono de antig�edad es: ", bonoAntiguedad;
	Sino
		Escribir "Lo siento, usted no cumple con los requisitos para recibir el bono de antig�edad.";
	FinSi
FinAlgoritmo
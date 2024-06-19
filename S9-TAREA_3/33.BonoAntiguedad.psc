Algoritmo CalculadoraBonoAntiguedad
	Definir aniosTrabajados Como Entero;
	Definir salario, bonoAntiguedad, PORCENTAJE_BONO Como Real;
	PORCENTAJE_BONO <- 0.05;
	Escribir "Ingrese cuántos años ha estado trabajando en la empresa:";
	Leer aniosTrabajados;
	Escribir "Ingrese su salario actual:";
	Leer salario;
	Si aniosTrabajados > 5 Entonces
		bonoAntiguedad <- salario * PORCENTAJE_BONO;
		Escribir "¡Felicidades! Usted ha trabajado más de 5 años y recibe un bono de antigüedad del 5%.";
		Escribir "El monto del bono de antigüedad es: ", bonoAntiguedad;
	Sino
		Escribir "Lo siento, usted no cumple con los requisitos para recibir el bono de antigüedad.";
	FinSi
FinAlgoritmo
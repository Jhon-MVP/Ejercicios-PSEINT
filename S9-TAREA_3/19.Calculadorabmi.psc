Algoritmo Calculadora_BMI
	Definir peso, altura, bmi Como Real;
	Escribir "Por favor, ingrese su peso en kilogramos:";
	Leer peso;
	Escribir "Por favor, ingrese su altura en metros:";
	Leer altura;
	bmi <- peso / (altura * altura);
	Escribir "Su índice de masa corporal (BMI) es: ", bmi;
	Si bmi < 18.5 Entonces
		Escribir "Usted está bajo peso.";
	Sino Si bmi >= 18.5 Y bmi < 25 Entonces
			Escribir "Usted está en un peso saludable.";
		Sino Si bmi >= 25 Y bmi < 30 Entonces
				Escribir "Usted tiene sobrepeso.";
			Sino
				Escribir "Usted tiene obesidad.";
			FinSi
		FinSi
	FinSi
	
FinAlgoritmo

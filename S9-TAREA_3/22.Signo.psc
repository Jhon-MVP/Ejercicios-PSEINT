Algoritmo SignoZodiacal
	Definir mes, dia Como Entero;
	Escribir "Por favor, ingrese su mes de nacimiento (en n�mero, por ejemplo, enero = 1, febrero = 2,etc.):";
	Leer mes;
	Escribir "Por favor, ingrese su d�a de nacimiento:";
	Leer dia;
	Si (mes = 3 Y dia >= 21) O (mes = 4 Y dia <= 19) Entonces
		Escribir "Su signo zodiacal es Aries.";
	Sino Si (mes = 4 Y dia >= 20) O (mes = 5 Y dia <= 20) Entonces
			Escribir "Su signo zodiacal es Tauro.";
		Sino Si (mes = 5 Y dia >= 21) O (mes = 6 Y dia <= 20) Entonces
				Escribir "Su signo zodiacal es G�minis.";
			Sino Si (mes = 6 Y dia >= 21) O (mes = 7 Y dia <= 22) Entonces
					Escribir "Su signo zodiacal es C�ncer.";
				Sino Si (mes = 7 Y dia >= 23) O (mes = 8 Y dia <= 22) Entonces
						Escribir "Su signo zodiacal es Leo.";
					Sino Si (mes = 8 Y dia >= 23) O (mes = 9 Y dia <= 22) Entonces
							Escribir "Su signo zodiacal es Virgo.";
						Sino Si (mes = 9 Y dia >= 23) O (mes = 10 Y dia <= 22) Entonces
								Escribir "Su signo zodiacal es Libra.";
							Sino Si (mes = 10 Y dia >= 23) O (mes = 11 Y dia <= 21) Entonces
									Escribir "Su signo zodiacal es Escorpio.";
								Sino Si (mes = 11 Y dia >= 22) O (mes = 12 Y dia <= 21) Entonces
										Escribir "Su signo zodiacal es Sagitario.";
									Sino Si (mes = 12 Y dia >= 22) O (mes = 1 Y dia <= 19) Entonces
											Escribir "Su signo zodiacal es Capricornio.";
										Sino Si (mes = 1 Y dia >= 20) O (mes = 2 Y dia <= 18) Entonces
												Escribir "Su signo zodiacal es Acuario.";
											Sino
												Escribir "Su signo zodiacal es Piscis.";
											FinSi
										FinSi
									FinSi
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi
	
								
FinAlgoritmo

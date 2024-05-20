Proceso VerificarVocalYAscii
    Definir caracter Como Caracter;
    Definir ascii Como Entero;
    Escribir "Ingrese un caracter: ";
    Leer caracter;
	
    Si caracter = 'a' Entonces
        ascii <- 97;
        Escribir "El caracter ", caracter, " es una vocal y su valor ASCII es ", ascii;
    Sino Si caracter = 'e' Entonces
			ascii <- 101;
			Escribir "El caracter ", caracter, " es una vocal y su valor ASCII es ", ascii;
		Sino Si caracter = 'i' Entonces
				ascii <- 105;
				Escribir "El caracter ", caracter, " es una vocal y su valor ASCII es ", ascii;
			Sino Si caracter = 'o' Entonces
					ascii <- 111;
					Escribir "El caracter ", caracter, " es una vocal y su valor ASCII es ", ascii;
				Sino Si caracter = 'u' Entonces
						ascii <- 117;
						Escribir "El caracter ", caracter, " es una vocal y su valor ASCII es ", ascii;
					Sino
						Escribir "El caracter ", caracter, " no es una vocal.";
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi
	
FinProceso
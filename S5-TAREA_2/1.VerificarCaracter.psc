Proceso VerificarCaracter
    Definir caract Como Caracter;
    Escribir "Ingrese un caracter: ";
    Leer caract;
    
    Si caract >= 'a' y caract <= 'z' Entonces
        Escribir "El caracter ",caract, " está entre a y z.";
    Sino Si caract >= 'A' y caract <= 'Z' Entonces
			Escribir "El caracter ",caract, " está entre A y Z.";
		Sino Si caract = ',' O caract = '.' O caract = ';' O caract = ':' Entonces
				Escribir "El caracter ",caract, " es un signo de puntuacion.";
			Sino
				Escribir "El caracter es: ", caract;
			FinSi
		FinSi
	FinSi
	
FinProceso
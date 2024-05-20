Proceso VerificarCaracter
    Definir caract Como Caracter;
    Escribir "Ingrese un caracter: ";
    Leer caract;
	
    Si caract >= '0' y caract <= '9' Entonces
        Escribir "El caracter ", caract, " es un número.";
    Sino Si caract = 'a' O caract = 'e' O caract = 'i' O caract = 'o' O caract = 'u' Entonces
			Escribir "El caracter ", caract, " es una vocal.";
		Sino
			Escribir "El caracter ", caract, " no es ni un número ni una vocal.";
		FinSi
	FinSi
	
FinProceso
Proceso CompararNombres
    Definir nombre1, nombre2 Como Cadena;
    Escribir "Ingrese el primer nombre: ";
    Leer nombre1;
    Escribir "Ingrese el segundo nombre: ";
    Leer nombre2;
	
    Si nombre1 = nombre2 Entonces
        Escribir "Los nombres son iguales.";
    Sino Si nombre1 < nombre2 Entonces
			Escribir "El primer nombre es menor que el segundo nombre.";
		Sino
			Escribir "El primer nombre es mayor que el segundo nombre.";
		FinSi
	FinSi
	
FinProceso
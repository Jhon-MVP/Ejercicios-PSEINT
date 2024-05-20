Algoritmo CostoViaje
    Definir tipoAutobus Como Caracter;
    Definir distancia, costoKilometro, costoTotal, costoPorPersona Como Real;
    Definir numeroPersonas Como Entero;
	
    Escribir "Ingrese el tipo de autob�s (A, B o C): ";
    Leer tipoAutobus;
	
    Si tipoAutobus = "A" Entonces
        costoKilometro <- 2.0;
	Sino
		Si tipoAutobus = "B" Entonces
			costoKilometro <- 2.5;
		Sino
			Si tipoAutobus = "C" Entonces
				costoKilometro <- 3.0;
			Sino
				Escribir "Tipo de autob�s inv�lido.";
			FinSi
		Finsi
	FinSi
	
	
    Escribir "Ingrese la distancia en kil�metros: ";
    Leer distancia;
	
    Escribir "Ingrese el n�mero de personas: ";
    Leer numeroPersonas;
	
    Si numeroPersonas < 20 Entonces
        numeroPersonas <- 20;
    FinSi
	
    costoTotal <- distancia * costoKilometro;
    costoPorPersona <- costoTotal / numeroPersonas;
	
    Escribir "El costo total del viaje es: $", costoTotal;
    Escribir "El costo por persona es: $", costoPorPersona;
	
FinAlgoritmo
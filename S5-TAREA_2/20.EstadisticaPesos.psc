Proceso EstadisticaPesos

    Definir peso Como Real;
    Definir contadorMenos40, contador40a50, contador50a60, contadorMas60 Como Entero;
    Definir sumaMenos40, suma40a50, suma50a60, sumaMas60 Como Real;
    Definir promedioMenos40, promedio40a50, promedio50a60, promedioMas60 Como Real;
	
    contadorMenos40 <- 0;
    contador40a50 <- 0;
    contador50a60 <- 0;
    contadorMas60 <- 0;
    sumaMenos40 <- 0;
    suma40a50 <- 0;
    suma50a60 <- 0;
    sumaMas60 <- 0;
	

    Escribir "Ingrese el peso del alumno (0 para terminar): ";
    Leer peso;
	

    Mientras peso <> 0 Hacer
        Si peso < 40 Entonces
            contadorMenos40 <- contadorMenos40 + 1;
            sumaMenos40 <- sumaMenos40 + peso;
		Sino
			Si peso >= 40 y peso <= 50 Entonces
				contador40a50 <- contador40a50 + 1;
				suma40a50 <- suma40a50 + peso;
			Sino
				Si peso > 50 y peso < 60 Entonces
					contador50a60 <- contador50a60 + 1;
					suma50a60 <- suma50a60 + peso;
				Sino
					Si peso >= 60 Entonces
						contadorMas60 <- contadorMas60 + 1;
						sumaMas60 <- sumaMas60 + peso;
					FinSi
				FinSi
			FinSi
		FinSi
		
        Escribir "Ingrese el peso del alumno (0 para terminar): ";
        Leer peso;
    FinMientras
	
    Si contadorMenos40 > 0 Entonces
        promedioMenos40 <- sumaMenos40 / contadorMenos40;
    Sino
        promedioMenos40 <- 0;
    FinSi
	
    Si contador40a50 > 0 Entonces
        promedio40a50 <- suma40a50 / contador40a50;
    Sino
        promedio40a50 <- 0;
    FinSi
	
    Si contador50a60 > 0 Entonces
        promedio50a60 <- suma50a60 / contador50a60;
    Sino
        promedio50a60 <- 0;
    FinSi
	
    Si contadorMas60 > 0 Entonces
        promedioMas60 <- sumaMas60 / contadorMas60;
    Sino
        promedioMas60 <- 0;
    FinSi
	
    Escribir "Estadisticas de pesos de los alumnos:";
    Escribir "Alumnos con menos de 40 kg: ", contadorMenos40, " Promedio: ", promedioMenos40;
    Escribir "Alumnos entre 40 y 50 kg: ", contador40a50, " Promedio: ", promedio40a50;
    Escribir "Alumnos entre 50 y 60 kg: ", contador50a60, " Promedio: ", promedio50a60;
    Escribir "Alumnos con más de 60 kg: ", contadorMas60, " Promedio: ", promedioMas60;
FinProceso
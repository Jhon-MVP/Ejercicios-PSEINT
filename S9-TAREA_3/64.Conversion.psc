    Proceso Principal
        Escribir "Ingrese los grados Celsius: ";
        Leer celsius;
        
        Definir fahrenheit Como Real;
        fahrenheit <- ConvertirACelsiusAFahrenheit(celsius);
        
        Escribir "Grados Celsius: ", celsius, " equivalen a ", fahrenheit, " grados Fahrenheit.";
FinProceso

Funcion ConvertirACelsiusAFahrenheit(celsius)
	Definir fahrenheit Como Real;
	fahrenheit <- (celsius * 9/5) + 32;
	
	Escribir fahrenheit;
FinFuncion

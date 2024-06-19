Proceso adivinaElNumero
    Definir numeroAleatorio, numeroUsuario Como Entero;
    
    numeroAleatorio <- Aleatorio(1, 100);
	
    Escribir "He generado un número aleatorio entre 1 y 100.";
    Escribir "¡Intenta adivinarlo!";
	
    numeroUsuario <- 0;
    
    Mientras numeroUsuario <> numeroAleatorio Hacer
        Escribir "Introduce tu suposición:";
        Leer numeroUsuario;
		
        Si numeroUsuario < numeroAleatorio Entonces
            Escribir "El número es mayor. Intenta de nuevo.";
        SiNo
            Si numeroUsuario > numeroAleatorio Entonces
                Escribir "El número es menor. Intenta de nuevo.";
            FinSi
        FinSi
    FinMientras
	
    Escribir "¡Felicidades! Has adivinado el número correcto: ", numeroAleatorio;
FinProceso

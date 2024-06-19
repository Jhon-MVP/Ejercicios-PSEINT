Proceso adivinaElNumero
    Definir numeroAleatorio, numeroUsuario Como Entero;
    
    numeroAleatorio <- Aleatorio(1, 100);
	
    Escribir "He generado un n�mero aleatorio entre 1 y 100.";
    Escribir "�Intenta adivinarlo!";
	
    numeroUsuario <- 0;
    
    Mientras numeroUsuario <> numeroAleatorio Hacer
        Escribir "Introduce tu suposici�n:";
        Leer numeroUsuario;
		
        Si numeroUsuario < numeroAleatorio Entonces
            Escribir "El n�mero es mayor. Intenta de nuevo.";
        SiNo
            Si numeroUsuario > numeroAleatorio Entonces
                Escribir "El n�mero es menor. Intenta de nuevo.";
            FinSi
        FinSi
    FinMientras
	
    Escribir "�Felicidades! Has adivinado el n�mero correcto: ", numeroAleatorio;
FinProceso

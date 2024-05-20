Proceso CalcularPresupuestoEvento
    Definir numeroPersonas Como Entero;
    Definir costoPorPersona, presupuestoTotal Como Real;
	
    Escribir "Ingrese el número de personas para el evento: ";
    Leer numeroPersonas;
	
    Si numeroPersonas > 300 Entonces
        costoPorPersona <- 75.00;
    Sino Si numeroPersonas > 200 Entonces
			costoPorPersona <- 85.00;
		Sino
			costoPorPersona <- 95.00;
		FinSi
		
		presupuestoTotal <- costoPorPersona * numeroPersonas;
		
		Escribir "El presupuesto total para el evento es: $", presupuestoTotal;
	FinSi
	
FinProceso
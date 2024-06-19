Algoritmo CalculadoraImpuestos
	Definir salario, impuesto Como Real;
        Escribir "Ingrese su salario anual: ";
        Leer salario;
        
        Si salario <= 10000 Entonces
            impuesto <- 0;
		Sino
			Si salario <= 20000 Entonces
            impuesto <- (salario - 10000) * 0.05;
			Sino
				impuesto <- (10000 * 0.05) + ((salario - 20000) * 0.15);
			FinSi
		FinSi
		

        Escribir "El impuesto sobre la renta para un salario anual de $", salario, " es: $", impuesto;
FinAlgoritmo

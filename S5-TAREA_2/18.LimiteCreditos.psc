Proceso LimiteCreditos
	Definir tipoTarjeta Como Entero;
    Definir limiteCredito, aumento, nuevoLimite Como Real;
	
	Escribir "Ingrese el tipo de Tarjeta que tiene: 1, 2, 3 o algun otro";
    Leer tipoTarjeta;
    Escribir "Ingrese su limite de credito actual";
	Leer limiteCredito;
	
    Si tipoTarjeta = 1 Entonces
        aumento <- limiteCredito * 0.25;
	Sino
		Si tipoTarjeta = 2 Entonces
			aumento <- limiteCredito * 0.35;
		Sino
			Si tipoTarjeta = 3 Entonces
				aumento <- limiteCredito * 0.40;
			Sino
				aumento <- limiteCredito * 0.50;
			FinSi
		FinSi
	FinSi
	
    nuevoLimite <- limiteCredito + aumento;
	
    Mostrar "El nuevo límite de crédito es: ", nuevoLimite;
	
FinProceso

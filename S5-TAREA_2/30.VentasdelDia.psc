Proceso calcular_ventas
    Definir N, i, venta, contador_1000, contador_500_1000, contador_500 Como Entero;
    Definir monto_1000, monto_500_1000, monto_500, monto_total Como Real;
    
    contador_1000 <- 0;
    contador_500_1000 <- 0;
    contador_500 <- 0;
    monto_1000 <- 0;
    monto_500_1000 <- 0;
    monto_500 <- 0;
    monto_total <- 0;
    
    Escribir "Ingrese el número de ventas realizadas por el empleado durante el día: ";
    Leer N;
    
    Para i <- 1 Hasta N Hacer
        Escribir "Ingrese el monto de la venta ", i, ": ";
        Leer venta;
        
        Si venta > 1000 Entonces
            contador_1000 <- contador_1000 + 1;
            monto_1000 <- monto_1000 + venta;
		Sino
			Si venta > 500 Y venta <= 1000 Entonces
				contador_500_1000 <- contador_500_1000 + 1;
				monto_500_1000 <- monto_500_1000 + venta;
			Sino
				contador_500 <- contador_500 + 1;
				monto_500 <- monto_500 + venta;
			FinSi
        FinSi
		
        monto_total <- monto_total + venta;
    FinPara
    
    Escribir "Ventas mayores a $1000: ", contador_1000, " ventas, monto total: $", monto_1000;
    Escribir "Ventas mayores a $500 pero menores o iguales a $1000: ", contador_500_1000, " ventas, monto total: $", monto_500_1000;
    Escribir "Ventas menores o iguales a $500: ", contador_500, " ventas, monto total: $", monto_500;
    Escribir "Monto total de todas las ventas: $", monto_total;
FinProceso

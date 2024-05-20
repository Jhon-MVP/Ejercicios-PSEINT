Proceso calcular_precio_pasajes
    Definir n, i, recorrido, precio_pasaje, precio_total, contador_pasajes_100km, contador_pasajes_mas_100km Como Entero;
    Definir suma_pasajes_100km, suma_pasajes_mas_100km, promedio_pasajes_100km, promedio_pasajes_mas_100km Como Real;
    
    contador_pasajes_100km <- 0;
    contador_pasajes_mas_100km <- 0;
    suma_pasajes_100km <- 0;
    suma_pasajes_mas_100km <- 0;
    
    Escribir "Ingrese la cantidad de viajes: ";
    Leer n;
    
    Para i <- 1 Hasta n Hacer
        Escribir "Ingrese el recorrido del viaje ", i, " en kilómetros: ";
        Leer recorrido;
        
        Si recorrido <= 100 Entonces
            precio_pasaje <- recorrido;
            contador_pasajes_100km <- contador_pasajes_100km + 1;
            suma_pasajes_100km <- suma_pasajes_100km + precio_pasaje;
        Sino
            precio_pasaje <- recorrido * 1.20;
            contador_pasajes_mas_100km <- contador_pasajes_mas_100km + 1;
            suma_pasajes_mas_100km <- suma_pasajes_mas_100km + precio_pasaje;
        FinSi
        
        Escribir "El precio del pasaje para el viaje ", i, " es: $", precio_pasaje;
    FinPara
    
    promedio_pasajes_100km <- suma_pasajes_100km / contador_pasajes_100km;
    promedio_pasajes_mas_100km <- suma_pasajes_mas_100km / contador_pasajes_mas_100km;
    
    Escribir "Cantidad de pasajes con recorrido hasta 100km: ", contador_pasajes_100km;
    Escribir "Cantidad de pasajes con recorrido mayor de 100km: ", contador_pasajes_mas_100km;
    Escribir "Promedio de precios de pasajes hasta 100km: $", promedio_pasajes_100km;
    Escribir "Promedio de precios de pasajes mayor de 100km: $", promedio_pasajes_mas_100km;
FinProceso

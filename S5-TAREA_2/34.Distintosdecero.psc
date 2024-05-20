Proceso calcular_promedio_valores_distintos_cero
    Definir num, cantidad_valores_distintos_cero Como Entero;
    Definir suma_valores_distintos_cero, promedio_valores_distintos_cero Como Real;
    
    cantidad_valores_distintos_cero <- 0;
    suma_valores_distintos_cero <- 0;
    
    Escribir "Ingrese una serie de números distintos de cero. Ingrese 0 para terminar.";
    Leer num;
    
    Mientras num <> 0 Hacer
        cantidad_valores_distintos_cero <- cantidad_valores_distintos_cero + 1;
        suma_valores_distintos_cero <- suma_valores_distintos_cero + num;
        
        Escribir "Ingrese otro número (0 para terminar): ";
        Leer num;
    FinMientras
    
    Si cantidad_valores_distintos_cero > 0 Entonces
        promedio_valores_distintos_cero <- suma_valores_distintos_cero / cantidad_valores_distintos_cero;
        Escribir "Cantidad de valores distintos de cero: ", cantidad_valores_distintos_cero;
        Escribir "Promedio de valores distintos de cero: ", promedio_valores_distintos_cero;
    Sino
        Escribir "No se ingresaron valores distintos de cero.";
    FinSi
FinProceso


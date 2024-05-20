Proceso contar_multiplos_de_tres
    Definir num, cantidad_multiplos_tres, total_multiplos_tres Como Entero;
    
    cantidad_multiplos_tres <- 0;
    total_multiplos_tres <- 0;
    
    Escribir "Ingrese una serie de números positivos. Ingrese un número negativo para terminar.";
    Leer num;
    
    Mientras num >= 0 Hacer
        Si num MOD 3 = 0 Entonces
            cantidad_multiplos_tres <- cantidad_multiplos_tres + 1;
            total_multiplos_tres <- total_multiplos_tres + num;
        FinSi
        
        Escribir "Ingrese otro número (negativo para terminar): ";
        Leer num;
    FinMientras
    
    Escribir "Cantidad de números positivos múltiplos de 3: ", cantidad_multiplos_tres;
    Escribir "Total de números positivos múltiplos de 3: ", total_multiplos_tres;
FinProceso

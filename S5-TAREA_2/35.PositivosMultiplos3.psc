Proceso contar_multiplos_de_tres
    Definir num, cantidad_multiplos_tres, total_multiplos_tres Como Entero;
    
    cantidad_multiplos_tres <- 0;
    total_multiplos_tres <- 0;
    
    Escribir "Ingrese una serie de n�meros positivos. Ingrese un n�mero negativo para terminar.";
    Leer num;
    
    Mientras num >= 0 Hacer
        Si num MOD 3 = 0 Entonces
            cantidad_multiplos_tres <- cantidad_multiplos_tres + 1;
            total_multiplos_tres <- total_multiplos_tres + num;
        FinSi
        
        Escribir "Ingrese otro n�mero (negativo para terminar): ";
        Leer num;
    FinMientras
    
    Escribir "Cantidad de n�meros positivos m�ltiplos de 3: ", cantidad_multiplos_tres;
    Escribir "Total de n�meros positivos m�ltiplos de 3: ", total_multiplos_tres;
FinProceso

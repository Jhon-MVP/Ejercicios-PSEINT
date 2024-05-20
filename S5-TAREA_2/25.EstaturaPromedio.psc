Proceso estatura_promedio
    Definir suma_estaturas, contador_personas Como Real;
    Definir estatura_persona, promedio Como Real;
    
    suma_estaturas <- 0;
    contador_personas <- 0;
    
    Escribir "Ingrese la estatura de la persona (0 para terminar): ";
    Leer estatura_persona;
    
    Mientras estatura_persona <> 0 Hacer
        suma_estaturas <- suma_estaturas + estatura_persona;
        contador_personas <- contador_personas + 1;
        
        Escribir "Ingrese la estatura de la siguiente persona (0 para terminar): ";
        Leer estatura_persona;
    Fin Mientras
    
    Si contador_personas > 0 Entonces
        Promedio <- suma_estaturas / contador_personas;
        Escribir "El promedio de estatura del grupo es: ", Promedio," cm";
    Sino
        Escribir "No se ha registrado ninguna estatura.";
    FinSi
FinProceso

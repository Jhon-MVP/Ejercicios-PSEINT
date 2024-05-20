Proceso edad_promedio_alumnos
    Definir suma_edades, contador_alumnos, edad_alumno Como Entero;
    Definir promedio Como Real;
    
    suma_edades <- 0;
    contador_alumnos <- 0;
    
    Escribir "Ingrese la edad del alumno ", contador_alumnos + 1, " (o ingrese 0 para terminar): ";
    Leer edad_alumno;
    
    Mientras edad_alumno <> 0 Hacer
        suma_edades <- suma_edades + edad_alumno;
        contador_alumnos <- contador_alumnos + 1;
        
        Escribir "Ingrese la edad del siguiente alumno (o ingrese 0 para terminar): ";
        Leer edad_alumno;
    Fin Mientras
    
    Si contador_alumnos > 0 Entonces
        promedio <- suma_edades / contador_alumnos;
        Escribir "La edad promedio de los ", contador_alumnos, " alumnos es: ", promedio;
    Sino
        Escribir "No se ha ingresado ninguna edad de alumno.";
    FinSi
FinProceso


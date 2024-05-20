Proceso calcular_promedio_asignaturas
    Definir n, i Como Entero;
    Definir nota_logica, nota_requerimientos, nota_calculos Como Real;
    Definir suma_logica, suma_requerimientos, suma_calculos, promedio_general, promedio_logica,  promedio_requerimientos, promedio_calculos Como Real;
    
    suma_logica <- 0;
    suma_requerimientos <- 0;
    suma_calculos <- 0;
    
    Escribir "Ingrese el número de alumnos del primer semestre: ";
    Leer n;
    
    Para i <- 1 Hasta n Hacer
        Escribir "Ingrese la nota final de la asignatura de Lógica para el alumno ", i, ": ";
        Leer nota_logica;
        suma_logica <- suma_logica + nota_logica;
        
        Escribir "Ingrese la nota final de la asignatura de Requerimientos para el alumno ", i, ": ";
        Leer nota_requerimientos;
        suma_requerimientos <- suma_requerimientos + nota_requerimientos;
        
        Escribir "Ingrese la nota final de la asignatura de Cálculos para el alumno ", i, ": ";
        Leer nota_calculos;
        suma_calculos <- suma_calculos + nota_calculos;
    FinPara
    
    promedio_logica <- suma_logica / n;
    promedio_requerimientos <- suma_requerimientos / n;
    promedio_calculos <- suma_calculos / n;
    
    promedio_general <- (promedio_logica + promedio_requerimientos + promedio_calculos) / 3;
    
    Escribir "Promedio de la asignatura de Lógica: ", promedio_logica;
    Escribir "Promedio de la asignatura de Requerimientos: ", promedio_requerimientos;
    Escribir "Promedio de la asignatura de Cálculos: ", promedio_calculos;
    Escribir "Promedio general de todas las asignaturas: ", promedio_general;
FinProceso


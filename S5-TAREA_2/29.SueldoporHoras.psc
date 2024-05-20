Proceso calcular_sueldo_empleado
    Definir horas_trabajadas, valor_hora, total_horas, sueldo Como Real;
    Definir dia Como Entero;
	
    total_horas <- 0;
    
    Para dia <- 1 Hasta 20 Hacer
        Escribir "Ingrese las horas trabajadas el día ", dia, ": ";
        Leer horas_trabajadas;
        
        total_horas <- total_horas + horas_trabajadas;
    FinPara
    
    Escribir "Ingrese el valor por hora del empleado: ";
    Leer valor_hora;
    
    sueldo <- total_horas * valor_hora;
    
    Escribir "Total de horas trabajadas en el mes: ", total_horas;
    Escribir "Sueldo a recibir por las horas trabajadas: $", sueldo;
FinProceso

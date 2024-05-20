Proceso calcular_promedio_sueldos
    Definir sueldo, bono, suma_sueldos_auxiliar, suma_sueldos_agregado, suma_sueldos_principal Como Real;
    Definir suma_bonos_auxiliar, suma_bonos_agregado, suma_bonos_principal, promedio_sueldos_auxiliar, promedio_bonos_auxiliar Como Real;
	Definir promedio_sueldos_agregado, promedio_bonos_agregado, promedio_sueldos_principal, promedio_bonos_principal Como Real;
    Definir contador_auxiliar, contador_agregado, contador_principal Como Entero;
    Definir categoria Como Cadena;
    
    suma_sueldos_auxiliar <- 0;
    suma_sueldos_agregado <- 0;
    suma_sueldos_principal <- 0;
    suma_bonos_auxiliar <- 0;
    suma_bonos_agregado <- 0;
    suma_bonos_principal <- 0;
    contador_auxiliar <- 0;
    contador_agregado <- 0;
    contador_principal <- 0;
    
    Escribir "Ingrese la categoría del profesor (Auxiliar, Agregado, Principal) o (finalizar) para terminar: ";
    Leer categoria;
    
    Mientras categoria <> "finalizar" Hacer
        Escribir "Ingrese el sueldo del profesor: ";
        Leer sueldo;
        
        Si categoria = "Auxiliar" Entonces
            suma_sueldos_auxiliar <- suma_sueldos_auxiliar + sueldo;
            bono <- sueldo * 0.1;
            suma_bonos_auxiliar <- suma_bonos_auxiliar + bono;
            contador_auxiliar <- contador_auxiliar + 1;
		Sino
			Si categoria = "Agregado" Entonces
				suma_sueldos_agregado <- suma_sueldos_agregado + sueldo;
				bono <- sueldo * 0.2;
				suma_bonos_agregado <- suma_bonos_agregado + bono;
				contador_agregado <- contador_agregado + 1;
			Sino
				Si categoria = "Principal" Entonces
					suma_sueldos_principal <- suma_sueldos_principal + sueldo;
					bono <- sueldo * 0.5;
					suma_bonos_principal <- suma_bonos_principal + bono;
					contador_principal <- contador_principal + 1;
				Sino
					Escribir "Categoría inexistente. Ingrese una categoría válida.";
				FinSi
			FinSi
		Finsi	
				Escribir "Ingrese la categoría del siguiente profesor (Auxiliar, Agregado, Principal) o (finalizar) para terminar: ";
				Leer categoria;
			
			
	FinMientras
    
    Si contador_auxiliar > 0 Entonces
        promedio_sueldos_auxiliar <- suma_sueldos_auxiliar / contador_auxiliar;
        promedio_bonos_auxiliar <- suma_bonos_auxiliar / contador_auxiliar;
        Escribir "Promedio de sueldos de la categoría Auxiliar: ", promedio_sueldos_auxiliar;
        Escribir "Promedio de bonos de la categoría Auxiliar: ", promedio_bonos_auxiliar;
    FinSi
    
    Si contador_agregado > 0 Entonces
        promedio_sueldos_agregado <- suma_sueldos_agregado / contador_agregado;
        promedio_bonos_agregado <- suma_bonos_agregado / contador_agregado;
        Escribir "Promedio de sueldos de la categoría Agregado: ", promedio_sueldos_agregado;
        Escribir "Promedio de bonos de la categoría Agregado: ", promedio_bonos_agregado;
    FinSi
    
    Si contador_principal > 0 Entonces
        promedio_sueldos_principal <- suma_sueldos_principal / contador_principal;
        promedio_bonos_principal <- suma_bonos_principal / contador_principal;
        Escribir "Promedio de sueldos de la categoría Principal: ", promedio_sueldos_principal;
        Escribir "Promedio de bonos de la categoría Principal: ", promedio_bonos_principal;
    FinSi
FinProceso

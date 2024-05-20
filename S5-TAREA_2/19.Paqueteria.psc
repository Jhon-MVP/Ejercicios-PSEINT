Proceso Paqueteria
    Definir pesoPaquete, costoPorGramo, costoTotal Como Real;
    Definir zonaDestino Como Entero;
    
    Escribir "Ingrese el peso del paquete en gramos: ";
    Leer pesoPaquete;
    
    Si pesoPaquete > 5000 Entonces
        Escribir "Lo sentimos, los paquetes con un peso superior a 5kg no son transportados.";
    Sino
        Escribir "Ingrese la zona de destino:";
        Escribir "1. América del Norte";
        Escribir "2. América Central";
        Escribir "3. América del Sur";
        Escribir "4. Europa";
        Escribir "5. Asia";
        Leer zonaDestino;
        
        Segun zonaDestino Hacer
            Caso 1:
                costoPorGramo <- 11.00;
            Caso 2:
                costoPorGramo <- 10.00;
            Caso 3:
                costoPorGramo <- 12.00;
            Caso 4:
                costoPorGramo <- 24.00;
            Caso 5:
                costoPorGramo <- 27.00;
            De Otro Modo:
                Escribir "Zona de destino inválida.";
        FinSegun
        
        costoTotal <- pesoPaquete * costoPorGramo;
        
        Escribir "El costo total del servicio de paquetería es: $", costoTotal;
    FinSi


FinProceso

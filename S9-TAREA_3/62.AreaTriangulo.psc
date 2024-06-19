Algoritmo CalcularAreaRectangulo
    Proceso Principal
        Escribir "Ingrese la base del rectángulo: ";
        Leer base;
        
        Escribir "Ingrese la altura del rectángulo: ";
        Leer altura;
        Definir area Como Real;
        area <- CalcularArea(base, altura);
        
        Escribir "El área del rectángulo con base ", base, " y altura ", altura, " es ", area;
FinProceso

Funcion Real CalcularArea(base, altura)
	Definir area Como Real;
	area <- base * altura;
	Escribir area;
    FinFuncion
FinAlgoritmo

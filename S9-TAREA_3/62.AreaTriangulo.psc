Algoritmo CalcularAreaRectangulo
    Proceso Principal
        Escribir "Ingrese la base del rect�ngulo: ";
        Leer base;
        
        Escribir "Ingrese la altura del rect�ngulo: ";
        Leer altura;
        Definir area Como Real;
        area <- CalcularArea(base, altura);
        
        Escribir "El �rea del rect�ngulo con base ", base, " y altura ", altura, " es ", area;
FinProceso

Funcion Real CalcularArea(base, altura)
	Definir area Como Real;
	area <- base * altura;
	Escribir area;
    FinFuncion
FinAlgoritmo

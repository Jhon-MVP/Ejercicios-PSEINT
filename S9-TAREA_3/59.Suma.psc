Algoritmo Suma
    
	Funcion SumarDosNumeros(Numero1, Numero2)
        Definir resultado Como Entero;
        resultado <- Numero1 + Numero2;
        Escribir resultado;
FinFuncion

Definir NumeroA, NumeroB, Suma Como Entero;
Escribir "Ingrese el primer n�mero: ";
Leer NumeroA;
Escribir "Ingrese el segundo n�mero: ";
Leer NumeroB;

Suma <- SumarDosNumeros(NumeroA, NumeroB);

Escribir "La suma de ", NumeroA, " y ", NumeroB, " es ", Suma;
FinAlgoritmo

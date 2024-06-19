Algoritmo EjemploMultiplicacion
    Funcion MultiplicarDosNumeros(Numero1, Numero2)
        Definir resultado Como Real;
        resultado <- Numero1 * Numero2;
        Escribir resultado;
	FinFuncion

Definir NumeroA, NumeroB, Producto Como Real;
Escribir "Ingrese el primer número: ";
Leer NumeroA;
Escribir "Ingrese el segundo número: ";
Leer NumeroB;

Producto <- MultiplicarDosNumeros(Numero1, Numero2);

Escribir "El producto de ", NumeroA, " y ", NumeroB, " es ", Producto;
FinAlgoritmo

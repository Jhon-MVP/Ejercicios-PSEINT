//1) Determinar cuánto se debe pagar por cierta cantidad de colas, considerando que si son más
//	de 23 colas, el costo por unidad es de $0,50 caso contrario el precio será 20% mas.
//Al costo resultante calcular el 12% del iva. Se pide presentar: cantidad comprada, el costo ´por
//	unidad, el total sin iva el iva y el total a pagar.
//Entrada recibo la variable cantidad
//Proceso segun cantidad < > precio unitario
//calculo el iva= 0.12 y el total a pagar
//Salida cantidad,preuni,total,iva 
Funcion pagar=CalculaPrecioColas(Cantidad)
	Definir iva,preuni,total,pagar Como Real;
	Escribir "Ingrese cantidad de colas";
	leer cantidad;
	Si cantidad > 23 Entonces
		preuni <- 0.50;
	SiNo
		preuni <- (0.50*0.20) + 0.50;
	FinSi
	total <- preuni * cantidad;
	iva <- (0.12 * total);
	pagar <- total + iva;
	Escribir "Cantidad comprada: ",cantidad,"$";
	Escribir "Costo por unidad: ",preuni,"$";
	Escribir "Costo: ",total,"$";
	Escribir "Iva 12%: ",iva,"$";
	Escribir "Total a pagar: ",pagar,"$";
FinFuncion
//---------------------------------------------------------------------------
//	2) La asociación de vinicultores tiene como política fijar un precio inicial al kilo
//	de uva, la cual se clasifica en tipos A y B, y además en tamaños 1 y 2.
//	Cuando se realiza la venta del producto, ésta es de un solo tipo y tamaño, se
//	requiere determinar cuánto recibirá un productor por la uva que entrega en un
//embarque, considerando lo siguiente:Si es de tipo A, se le cargan 20 al precio
//	inicial cuando es de tamaño 1; y 30 si es de tamaño 2. Si es de tipo B, se rebajan
//	30 cuando es de tamaño 1, y 50 cuando es de tamaño 2.
//	Realice un algoritmo para determinar la ganancia obtenida

//Entrada:	tipo=""(leer);tamaño=0(leer);precio=0.0(leer);ganacia=0.0;descuento=0.0;aumento=0.0
//Proceso: Si tipo = "A" Entonces
//Si tamaño = 1 Entonces
//	aumento <- 20.0
//Sino
//	aumento <- 30.0
//FinSi
//Sino 
//	Si tipo = "B" Entonces
//		Si tamaño = 1 Entonces
//			aumento <- -30.0
//		Sino
//			aumento <- -50.0
//		FinSi
//	FinSi
//FinSi	
//descuento = (aumento * (-1))
//ganancia = precio + descuento
//Salida: ganancia

Funcion Ejercicio2(precio,tipo,tamaño)
    Definir  ganancia, descuento, extra Como Real;
	
	extra<-uvas_pitajaya(precio,tipo,tamaño);
	descuento <- (extra * (-1));
	ganancia <- precio + descuento;
	Escribir "La ganancia obtenida por el productor es de $", ganancia;
FinFuncion	
//------------------------------------------------------------------------------------------------------
//10) La asociación de vinicultores tiene como política fijar un precio inicial al quintal de
//pitajaya, la cual se clasifica en tipos "Amarilla" y "Colorada", y además en tamaños 1 y 2.
//Cuando se realiza la venta del producto, ésta es de un solo tipo y tamaño, se requiere
//determinar cuánto recibirá un productor por la pitajaya que entrega en un embarque,
//considerando lo siguiente:
//? Si es de tipo Amarilla, se le cargan $10 al precio inicial cuando es de tamaño 1; y 15% mas $5
//si es de tamaño 2
//? Si es de tipo Colorada, se rebajan $20 cuando es de tamaño 1, y 20% cuando es de tamaño
//2. Sea tipo Amarilla y Colorada se debe se aplicar un descuento del 5% y el 12% del IVA.
//Realice un algoritmo para determinar el precio de embarque
funcion Ejercicio10(precio,tipo,tamaño)
	
    Definir  descuento, extra, porcentajeAmarilla1 Como Real;
    Definir iva Como Real;
	extra<-uvas_pitajaya(precio,tipo,tamaño);
    descuento <-  extra* 0.05;
    iva <-  extra* 0.12;
	extra <- extra+ descuento + iva;
    Escribir "El precio final del embarque es:", extra;
FinFuncion
funcion extra=uvas_pitajaya(precio,tipo,tamaño)
	porcentajeAmarilla1 <- 0.1; porcentajeAmarilla2 <- 0.15; descuentoColorada1 <- 0.2; descuentoColorada2 <- 0.2;
	
    Si tipo = "A" Entonces
		Si tamaño = 1 Entonces
			extra  <- 20.0;
        Sino
			extra <- 30.0;
        FinSi
    Sino 
		Si tipo = "B" Entonces
			Si tamaño = 1 Entonces
				extra <- -30.0;
			Sino
				extra <- -50.0;
			FinSi
		FinSi
	FinSi
	
	Si tipo = "Amarilla" Entonces
        Si tamaño = 1 Entonces
            extra <- precio + porcentajeAmarilla1;
        Sino
            extra <- precio + (precio * porcentajeAmarilla2) + 5;
        FinSi
    FinSi
	Si tipo= "Colorada" Entonces
		Si tamaño = 1 Entonces
            extra <- precio - descuentoColorada1;
        Sino
            extra <- precio - (precio * descuentoColorada2 );
        FinSi
	FinSi
FinFuncion
//--------------------------------------------------------------------------------------------------------
//3) Dado dos números obtener el residuo sin el operador mod, 
//Entrada recibo los numeros para calcular el reciduo
	//Proceso ((num1 / num2 )* num2 )-num1
	//Salida reciduo
Funcion reciduo=CalcularReciduo(num1,num2)
	Escribir "Ingrese un numero";
	Leer num1;
	Escribir "Ingrese un numero";
	Leer num2;
		reciduo <- num1-(num2*(num1/num2));
		Escribir "El reciduo es: ",reciduo;
FinFuncion
//--------------------------------------------------------------------
//4) El consultorio del Dr. Paez tiene como política cobrar la consulta con
//		base en el número de cita, de la siguiente forma:
//			Las tres primeras citas a $200.00 c/u.
//			Las siguientes dos citas a $150.00 c/u.
//			Las tres siguientes citas a $100.00 c/u.
//			Las restantes a $50.00 c/u, mientras dure el tratamiento.
//			Se requiere un algoritmo para determinar:
//						Cuánto pagará el paciente por la cita.
//						El monto de lo que ha pagado el paciente por el tratamiento.
//						Para la solución de este problema se requiere saber qué número de cita se efectuará, con el
//							cual se podrá determinar el costo que tendrá la consulta y cuánto se ha gastado en el
//							tratamiento.
//Entrada:	cita=0(leer); precio=0.0;total=0.0 ; valor_cita=0.0
//Proceso:
//Si cita <= 3 Entonces
//	precio <- 200.00
//	Si cita > 3 y cita <= 5 Entonces
//		precio <- 150.00
//		total <-(cita - 3) * 150.00
//		valor_cita <- 600.00 + total
//		Si cita > 5 y cita <= 8 Entonces
//			precio <- 100.00
//			total <-(cita - 5) * 100.00
//			valor_cita <- 1100.00 + total
//			Si cita > 8 Entonces
//				precio <- 50.00
//				total <-(cita - 8) * 50.00
//				valor_cita <- 1400.00 + total
//			FinSi
//		FinSi
//	FinSi
//FinSi
//Salida: Escribir "Numero de cita: ",cita
//Escribir "Costo de la consulta: ",precio
//Escribir "Costo del tratamiento: ",valor_cita
Funcion Ejercicio4 
	Definir cita como entero;
	Definir precio,total,valor_cita Como Real;
	cita<-0; precio<-0.0;total<-0.0;
	Escribir "Ingrese el numero de cita ";
	Leer cita;
	
	Si cita <= 3 Entonces
		precio <- 200.00;
		Si cita > 3 y cita <= 5 Entonces
			precio <- 150.00;
			total <-(cita - 3) * 150.00;
			valor_cita <- 600.00 + total;
			Si cita > 5 y cita <= 8 Entonces
				precio <- 100.00;
				total <-(cita - 5) * 100.00;
				valor_cita <- 1100.00 + total;
				Si cita > 8 Entonces
					precio <- 50.00;
					total <-(cita - 8) * 50.00;
					valor_cita <- 1400.00 + total;
				FinSi
			FinSi
		FinSi
	FinSi
	
	Escribir "Numero de cita: ",cita;
	Escribir "Costo de la consulta: ",precio;
	Escribir "Costo del tratamiento: ",valor_cita;
	
FinFuncion
//----------------------------------------------------------------------------------------------------
//5)Escribir un algoritmo que lea cuatro números y determine si el numero 1
//es la mitad del número 2; Y si el numero 3 es divisor del numero4.
//Entrada n1=0[leer] n2=0[leer] n3=0[leer] n4=0[leer] 
//Proceso Si n1/2==n2 y n3 mod n4=0 Entonces
//Salida Se muestra un mensaje
Funcion Comparacion1(n1,n2,n3,n4)
	resp<-divisibles(n1,n2,n3,n4);
	Si resp=1 Entonces
		Escribir "La mitad numero ",n1," es el numero ",n2;
		Escribir "Y el numero ",n3," es divisible para ",n4;
	SiNo
		Escribir "La mitad numero ",n1," no es el numero ",n2;
		Escribir "O el numero ",n3," no es divisibl;e para ",n4;
	FinSi
FinFuncion

//7)Escribir un algoritmo que lea cuatro números y determine si el numero 1 es divisor del
//numero3 Y si el numero 2 es el doble del numero4.
//Entrada n1=0[leer] n2=0[leer] n3=0[leer] n4=0[leer] 
//Proceso Si n1 mod n3=0 y n2 == n4*2 Entonces
//Salida Se muestra un mensaje
Funcion Comparacion2(n1,n2,n3,n4)
	resp<-divisibles(n1,n2,n3,n4);
	Si resp=2 Entonces
		Escribir "El numero ",n1," es divisible para ",n3;
		Escribir "Y el numero ",n2," es el doble que el numero ",n4;
	SiNo
		Escribir "El numero ",n1," no es divisible para ",n3;
		Escribir "O el numero ",n2," no es el doble que el numero ",n4;
	FinSi
FinFuncion
funcion resp=divisibles(n1,n2,n3,n4)
	Si n1/2==n2 y n3 mod n4=0 Entonces
		resp <- 1;
	SiNo 
		Si  n1 mod n3=0 y n2 == n4*2 Entonces
			resp <- 2;
		FinSi
	FinSi
FinFuncion
//----------------------------------------------------------------------------------------------------
//8) El banco POO ha decidido aumentar el límite de crédito de las tarjetas de crédito
//de sus clientes, para esto considera que:
//Si su cliente tiene tarjeta tipo 1, el aumento será del $100 .
//Si tiene tipo 2 el aumento será del $200
//Si tiene tipo 3, el aumento será del $300
//Para cualquier otro tipo será del 500
//Realizar un algoritmo que ayude al banco a determinar el nuevo límite
//de crédito que tendrá una persona en su tarjeta considerando que
//después del aumento se tendrá que subir 10% adicionales a todas las tarjetas

funcion nuevo_limite=Ejercicio8
	Definir valores, nuevo_limite, adicional Como Real;
	tipo_tareta <-0; credito<- 0.0; aumento<- 0.0; nuevo_limite<-0.0;adicional<-0.1;
	Escribir "Ingrese su límite de crédito actual";
	Leer credito;
	Escribir "Ingrese su tipo de tarjeta";
	Leer tipo_tarjeta;
	aumento<-creditos;
	adicional<- credito*adicional;
	nuevo_limite <- aumento + credito + adicional;
FinFuncion
//----------------------------------------------------------------------------------------------------
//6) El banco XYZ ha decidido aumentar el límite de crédito de las tarjetas de crédito
//de sus clientes, para esto considera que:
//Si su cliente tiene tarjeta tipo 1, el aumento será del 25%.
//Si tiene tipo 2 el aumento será del 35%
//Si tiene tipo 3, el aumento será del 40%
//Para cualquier otro tipo será del 50%
//Se pide realizar un algoritmo que ayude al banco a determinar el nuevo límite
//de crédito que tendrá una persona en su tarjeta considerando que después
//del aumento de porcentaje se tendrá que subir $20 adicionales a todas las tarjetas
//Entrada:
//Proceso:Segun tipo Hacer
//1:
//	aumento <- ( saldo * 25)/100
//2:
//	aumento <- ( saldo * 35)/100
//3:
//	aumento <- ( saldo * 40)/100
//De Otro Modo:
//	aumento <- ( saldo * 50)/100
//Fin Segun
//nuevo_salario <- aumento + saldo
//Salida: nuevo_salario
Funcion nuevo_limite=Ejercicio6
	Definir saldo,nuevo_salario,aumento, tipo Como Real;
	tipo<-0;saldo<-0.0;nuevo_salario<-0.0;aumento<-0.0; adicional<-0.20;
	Escribir "Ingrese su límite de crédito actual";
	Leer credito;
	Escribir "Ingrese su tipo de tarjeta";
	Leer tipo;
	aumento<-creditos;
	adicional<-credito*adicional;
	nuevo_limite <-aumento + credito + adicional;
FinFuncion
Funcion aumento=creditos
	Segun tipo Hacer
		1:
			aumento <-credito*0.25;
		2:
			aumento <- credito*0.35;
		3:
			aumento <- credito+0.40;
		De Otro Modo:
			aumento <- credito+0.50;
	Fin Segun
	Segun tipo_credito Hacer
		1:
			aumento <- 100;
		2:
			aumento <- 200;
		3:
			aumento <- 300;
		De Otro Modo:
			aumento<-500;
	Fin Segun
FinFuncion
//------------------------------------------------------------------------------------------------------
//9) Pedir al usuario un número y mostrar si es negativo menor que -20, sino mostrar si es
//positivo par o impar múltiplo de 7.
//Entrada num=0[leer]
//Proceso Si num <= -20 Entonces
//Si num >0 y num mod 2=0  Entonces
//Si num mod 7=0 y num mod 2=1  Entonces
//Salida Escribir 
Funcion CompararUnNumero
	Definir num Como Entero;
	Escribir "Ingresa un numero";
	Leer num;
	Si num <= -20 Entonces
		Escribir num," Es menor que -20";
	SiNo
		Escribir num," No es menor que -20";
		Si num >0 y num mod 2=0  Entonces
			Escribir num," es positivo y par";
		SiNo
			Escribir num," es positivo";
			Si num mod 7=0 y num mod 2=1  Entonces
				Escribir num," es impar y divisible para 7 ";
			SiNo
				Escribir num," es impar";
			FinSi
		FinSi
	FinSi
FinFuncion
//----------------------------------------------------------------------------------------------------
//11) Pedir al usuario un número y mostrar si es par menor que 10, sino mostrar si es negativo e
//impar o negativo divisible para 5.
//Entrada num=0[leer]
//Proceso Si num mod 2 =0 y num < 10 Entonces
//Si num < 0 y num mod 2=1  Entonces
//Si num < 0 y num mod 5=0  Entonces
//Salida Escribir 
Funcion CompararUnNumero2
	Definir num Como Entero;
	Escribir "Ingresa un numero";
	Leer num;
	Si num mod 2 =0 y num < 10 Entonces
		Escribir num," Es par menor que 10";
	SiNo
		Si num < 0 y num mod 2=1  Entonces
			Escribir num," es negativo e impar";
		SiNo
			Si num < 0 y num mod 5=0  Entonces
				Escribir num," es negativo y divisible para 5 ";
			FinSi
		FinSi
	FinSi
FinFuncion
//----------------------------------------------------------------------------------------------------
//12) Fábricas "El cometa" produce artículos con claves (1, 2, 3, 4, 5 y 6). Se requiere un
//algoritmo para calcular los precios de venta, para esto hay que considerar lo siguiente:
//Costo de producción = materia prima + mano de obra + gastos de fabricación.
//Precio de venta = costo de producción + 45 % de costo de producción.
//El costo de la mano de obra se obtiene de la siguiente forma: para los productos con clave 3 o
//4 se carga 75 % del costo de la materia prima; para los que tienen clave 1 o 5 se carga 80 %, y
//para los que tienen clave 2 o 6, 85 %.
//Para calcular el gasto de fabricación se considera que, si el artículo que se va a producir tiene
//claves 2 o 5, este gasto representa 30 % sobre el costo de la materia prima; si las claves son 3 o
//6, representa 35 %; si las claves son 1 o 4, representa 28 %. La materia prima tiene el mismo
//costo para cualquier clave.
funcion Ejercicio12
	Definir clave Como Entero;
	Definir CostoMateriaPrima Como Real;
	Escribir "Ingrese el costo de la materia prima";
	Leer costoMateriaPrima;
	Escribir "Ingrese la clave";
	Leer clave;
	Si clave = 3 o clave = 4 Entonces
		costoManoObra <- 0.75 * costoMateriaPrima;
	Sino
		Si clave = 1 o clave = 5 Entonces
			costoManoObra <- 0.80 * costoMateriaPrima;
		Sino
			costoManoObra <- 0.85 * costoMateriaPrima;
		FinSi
	FinSi
	
	// Calcular el costo de los gastos de fabricación
	Si clave = 2 o clave = 5 Entonces
		costoGastosFabricacion <- 0.30 * costoMateriaPrima;
	Sino
		Si clave = 3 o clave = 6 Entonces
			costoGastosFabricacion <- 0.35 * costoMateriaPrima;
		Sino
			costoGastosFabricacion <- 0.28 * costoMateriaPrima;
		FinSi
	FinSi
	
	// Calcular el costo de producción
	costoProduccion <- costoMateriaPrima + costoManoObra + costoGastosFabricacion;
	
	// Calcular el precio de venta
	precioVenta <- costoProduccion + 0.45 * costoProduccion;
	
	Escribir "El precio de venta del artículo es:", precioVenta;
FinFuncion
//---------------------------------------------------------------------------------------------------------
//13) Dado un número entero N, calcular e informar al usuario cuántos dígitos tiene dicho
//número.
//Entrada contador=0,x=0[leer]
//Proceso x/10 usamos trunc para cojer solo la parte entera
//Por cada vuelta contador + 1
//Salida contador 
Funcion contador=CantidadDeDigitos(x)
	Definir contador Como Entero;
	Escribir "Ingresa un numero";
	Leer x;
	contador <- 0;
	Mientras x <> 0 Hacer
		x <- trunc (x /10);
		contador <- contador + 1;
	FinMientras
	Escribir "El numero tiene ",contador," digitos";
FinFuncion
//---------------------------------------------------------------------------------------------------------
//14) Dado un número, determine si es capicúa.
//Nota: un número capicúa es aquel que se lee igual hacia adelante que hacia atrás.
funcion Ejercicio14
	Definir num Como Entero;  
	Escribir "Ingrese un número "; 
	Leer num;
	Si num MOD 11 = 0 Entonces
		Escribir num, " es capicúa"; 
	SiNo 
		Escribir num, " no es capicúa"; 
		
	FinSi
FinFuncion
//----------------------------------------------------------------------------------------------------------
//15) Escribir un algoritmo que presente los divisores de un numero
//Entrada num=0[leer] divisor=0
//Proceso bucle divisor = 1  hasta numero =10
//Si 10 mod 1 = 0 Entonces 1 es divisor Asi hasta el numero 10
//Salida Escribir Se escriben donde se cumple la condicion 
Funcion ContarDivisores(num)
    Definir divisor, contador Como Entero;
    contador <- 0;
	Escribir "Ingrese un numero";
	Leer num;
    Para divisor <- 1 Hasta num Hacer
        Si num MOD divisor = 0 Entonces
            contador <- contador + 1;
        FinSi
    FinPara
    Escribir "La cantidad de números divisibles para ", num, " es: ", contador;
FinFuncion
//16) Escribir un algoritmo que presente la suma de los divisores de un numero
	Funcion DivisoresDeUnNumero(num)
		Definir divisor Como Entero;
		Escribir "Ingrese un número:";
		Leer num;
		Escribir "Los divisores de ", num, " son:";
		ContarDivisores(num);
		Para divisor <- 1 Hasta num Hacer
			Si num MOD divisor = 0 Entonces
				Escribir "El número: ", divisor;
			FinSi
		FinPara
FinFuncion

//------------------------------------------------------------------------------------------------------------
//17) Escribir un algoritmo que presente la cantidad de los divisores de un numero
//Entrada num=0[leer] divisor=0 contador= 0
//Proceso bucle for: divisor comienza en 1 hasta en numero ingreesado 
//Si numero mod divisor = 0 entonces es divisible para ese numero 
//se guarda en contador
//Salida:Se muestra contador
Funcion SumaDivisores(num)
    Definir  suma Como Entero;
    suma <- 0;
    ContarDivisores(num);
    Para divisor <- 1 Hasta num Hacer
        Si num MOD divisor = 0 Entonces
            suma <- suma + divisor;
        FinSi
    FinPara
    Escribir "La suma de los divisores de ", num, " es: ", suma;
FinFuncion
//------------------------------------------------------------------------------------------------------------
//18) Escribir un algoritmo que indique si un número es perfecto
//Nota: un número es perfecto cuando la suma de los divisores del número incluido el 1 y
//excluido el propio número es igual al numero
//Ejemplo: numero=6: los divisores del 6 son: 1+2+3=6
funcion Ejercicio18
	Definir num, suma, divisor Como Entero;
	
    Escribir "Ingrese un número: ";
    Leer num;
	
    suma <- 0;
	
    Para divisor <- 1 Hasta num - 1 Hacer
        Si num % divisor = 0 Entonces
            suma <- suma + divisor;
        FinSi
    FinPara
	
    Si suma = num Entonces
        Escribir "El número ", num, " es un número perfecto.";
    Sino
        Escribir "El número ", num, " no es un número perfecto.";
    FinSi
FinFuncion
//-------------------------------------------------------------------------------------------------------------
//19) Dado un número N determinar si es un número primo.
//Nota: Un número primo es aquel que solo es divisible por 1(uno) y por el mismo.
//Entrada divisor=1 contador=0 num=0[leer]
//Proceso Bucle for divisor =1 hasta el numero 
//Si numero mod divisor = 0 Contador + 1
//Cerrar el bucle
//Si Contador = 2 
//Salida Es un numero primo 
Funcion suma= SumaDivisor(num)
    Definir divisor, suma Como Entero;
    suma <- 0;
    Para divisor <- 1 Hasta num Hacer
        Si num MOD divisor = 0 Entonces
            suma <- suma + divisor;
        FinSi
    FinPara
FinFuncion

Funcion NumeroPrimo(num)
    Definir contador Como Entero;
    Escribir "Escriba un numero";
    Leer num;
    contador <- SumaDivisor(num);
    Si contador = num + 1 Entonces
        Escribir "El número ", num, " es primo.";
    Sino
        Escribir "El número ", num, " no es primo.";
    FinSi
FinFuncion
//-------------------------------------------------------------------------------------------------------------
//20) Dado dos números determinar si son primos gemelos.
//Nota: Dos números son primos gemelos si los dos son primos y su resta en valor absoluto es
//igual a 2. Ejemplo: 7 y 5
Funcion Ejercicio20
Definir num1, num2 Como Entero;

Escribir "Ingrese el primer número: ";
Leer num1;

Escribir "Ingrese el segundo número: ";
Leer num2;

Si SumaDivisor(num1) = num2 + 1 Y SumaDivisor(num2) = num1 + 1 Y Abs(num1 - num2) = 2 Entonces
	Escribir num1, " y ", num2, " son primos gemelos.";
Sino
	Escribir num1, " y ", num2, " no son primos gemelos.";
FinSi
FinFuncion

//----------------------------------------------------------------------------------------------------------------

//21) Dado dos números determinar si son primos amigos.
//Nota: Dos números son primos amigos si las sumas de los divisores del numero1 es igual a la
//suma de los divisores del numero2. Ejemplo: 6(1+2+3=6) y 25(1+5=6)
//Entrada num1=0[leer],num2=0[leer],,divisor=1,contador1=0,contador2=0
//Proceso Hacemos dos blucles para cada numero para encontrar sus divisores
//Para divisor<-1 Hasta num1 Hacer
//Si num1 mod divisor = 0 Entonces
//Dos numeros son amigos si sus dividores son el otro numero 
//cerramos los bucles
//Si contadores son iguales ç
//Salida los numeros son amigos
Funcion NumerosAmigos
    Definir num1, num2 Como Entero;
    Escribir "Ingresa dos números ";
    Leer num1, num2;
	
    Si SumaDivisor(num1) = num2 Y SumaDivisor(num2) = num1 Entonces
        Escribir "Los números ", num1, " y ", num2, " son números amigos.";
    Sino 
        Escribir "Los números ingresados no son números amigos.";
    FinSi
FinFuncion
//-----------------------------------------------------------------------
//	2) La asociación de vinicultores tiene como política fijar un precio inicial al kilo
//	de uva, la cual se clasifica en tipos A y B, y además en tamaños 1 y 2.
//	Cuando se realiza la venta del producto, ésta es de un solo tipo y tamaño, se
//	requiere determinar cuánto recibirá un productor por la uva que entrega en un
//embarque, considerando lo siguiente:Si es de tipo A, se le cargan 20 al precio
//	inicial cuando es de tamaño 1; y 30 si es de tamaño 2. Si es de tipo B, se rebajan
//	30 cuando es de tamaño 1, y 50 cuando es de tamaño 2.
//	Realice un algoritmo para determinar la ganancia obtenida

//Entrada:	tipo=""(leer);tamaño=0(leer);precio=0.0(leer);ganacia=0.0;descuento=0.0;aumento=0.0
//Proceso: Si tipo = "A" Entonces
//Si tamaño = 1 Entonces
//	aumento <- 20.0
//Sino
//	aumento <- 30.0
//FinSi
//Sino 
//	Si tipo = "B" Entonces
//		Si tamaño = 1 Entonces
//			aumento <- -30.0
//		Sino
//			aumento <- -50.0
//		FinSi
//	FinSi
//FinSi	
//descuento = (aumento * (-1))
//ganancia = precio + descuento
//Salida: ganancia

Funcion ganancia_uvas
	Definir tipo Como Caracter;
	Definir tamano Como Entero;
    Definir  ganancia, descuento, aumento Como Real;
	tipo<-"";tamano<-0;precio<-0.0;ganacia<-0.0;descuento<-0.0; aumento<-0.0;
	escribir "Ingrese el precio inicial";
	Leer precio;
    Escribir "Ingrese el tipo de uva (A o B):";
    Leer tipo;
    Escribir "Ingrese el tamaño de uva (1 o 2):";
    Leer tamano;
	
	
    Si tipo = "A" Entonces
		Si tamano = 1 Entonces
            aumento <- 20.0;
        Sino
            aumento <- 30.0;
        FinSi
    Sino 
		Si tipo = "B" Entonces
			Si tamano = 1 Entonces
				aumento <- -30.0;
			Sino
				aumento <- -50.0;
			FinSi
		FinSi
	FinSi	
	descuento <- (aumento * (-1));
	ganancia <- precio + descuento;
	
	Escribir "La ganancia obtenida por el productor es de $", ganancia;
FinFuncion
//--------------------------------------------------------------------------------------------------------
//4) El consultorio del Dr. Paez tiene como política cobrar la consulta con
//		base en el número de cita, de la siguiente forma:
//			Las tres primeras citas a $200.00 c/u.
//			Las siguientes dos citas a $150.00 c/u.
//			Las tres siguientes citas a $100.00 c/u.
//			Las restantes a $50.00 c/u, mientras dure el tratamiento.
//			Se requiere un algoritmo para determinar:
//						Cuánto pagará el paciente por la cita.
//						El monto de lo que ha pagado el paciente por el tratamiento.
//						Para la solución de este problema se requiere saber qué número de cita se efectuará, con el
//							cual se podrá determinar el costo que tendrá la consulta y cuánto se ha gastado en el
//							tratamiento.
//Entrada:	cita=0(leer); precio=0.0;total=0.0 ; valor_cita=0.0
//Proceso:
//Si cita <= 3 Entonces
//	precio <- 200.00
//	Si cita > 3 y cita <= 5 Entonces
//		precio <- 150.00
//		total <-(cita - 3) * 150.00
//		valor_cita <- 600.00 + total
//		Si cita > 5 y cita <= 8 Entonces
//			precio <- 100.00
//			total <-(cita - 5) * 100.00
//			valor_cita <- 1100.00 + total
//			Si cita > 8 Entonces
//				precio <- 50.00
//				total <-(cita - 8) * 50.00
//				valor_cita <- 1400.00 + total
//			FinSi
//		FinSi
//	FinSi
//FinSi
//Salida: Escribir "Numero de cita: ",cita
//Escribir "Costo de la consulta: ",precio
//Escribir "Costo del tratamiento: ",valor_cita
Funcion consulta
	Definir precio,total,valor_cita Como Real;
	valor_cita<-0; precio<-0.0;total<-0.0;
	Escribir "Ingrese el numero de cita ";
	Leer cita;
	
	Si cita <= 3 Entonces
		precio <- 200.00;
	SiNo
		Si cita > 3 y cita <= 5 Entonces
			precio <- 150.00;
			total <- (cita - 3) * 150.00;
			valor_cita <- 600.00 + total;
		SiNo
			Si cita > 5 y cita <= 8 Entonces
				precio <- 100.00;
				total <-(cita - 5) * 100.00;
				valor_cita <- 1100.00 + total;
			SiNo
				Si cita > 8 Entonces
					precio <- 50.00;
					total <-(cita - 8) * 50.00;
				FinSi
			FinSi
		FinSi
	FinSi
	
	Escribir "Numero de cita: ",cita;
	Escribir "Costo de la consulta: ",precio;
	Escribir "Costo del tratamiento: ",valor_cita;
FinFuncion

//------------------------------------------------------------------------------------------------------
//10) La asociación de vinicultores tiene como política fijar un precio inicial al quintal de
//pitajaya, la cual se clasifica en tipos "Amarilla" y "Colorada", y además en tamaños 1 y 2.
//Cuando se realiza la venta del producto, ésta es de un solo tipo y tamaño, se requiere
//determinar cuánto recibirá un productor por la pitajaya que entrega en un embarque,
//considerando lo siguiente:
//? Si es de tipo Amarilla, se le cargan $10 al precio inicial cuando es de tamaño 1; y 15% mas $5
//si es de tamaño 2
//? Si es de tipo Colorada, se rebajan $20 cuando es de tamaño 1, y 20% cuando es de tamaño
//2. Sea tipo Amarilla y Colorada se debe se aplicar un descuento del 5% y el 12% del IVA.
//Realice un algoritmo para determinar el precio de embarque
funcion pitajaya_precio
	Definir tipo Como Caracter;
    Definir tamano Como Entero;
    Definir precioInicial, descuento, precioFinal Como Real;
    Definir iva Como Real;
    Definir porcentajeAmarilla1, porcentajeAmarilla2, descuentoColorada1, descuentoColorada2 Como Real;
    
    porcentajeAmarilla1 <- 0.1;
    porcentajeAmarilla2 <- 0.15;
    descuentoColorada1 <- 0.2;
    descuentoColorada2 <- 0.2;
    
    Escribir "Ingrese el tipo de pitajaya (Amarilla o Colorada):";
    Leer tipo;
    Escribir "Ingrese el tamaño de pitajaya (1 o 2):";
    Leer tamano;
    Escribir "Ingrese el precio inicial:";
    Leer precioInicial;
    
    Si tipo = "Amarilla" Entonces
        Si tamano = 1 Entonces
            precioFinal <- precioInicial + porcentajeAmarilla1;
        Sino
            precioFinal <- precioInicial + (precioInicial * porcentajeAmarilla2) + 5;
        FinSi
    Sino
        Si tamano = 1 Entonces
            precioFinal <- precioInicial - descuentoColorada1;
        Sino
            precioFinal <- precioInicial - (precioInicial * descuentoColorada2 );
        FinSi
    FinSi
    
    descuento <- precioFinal * 0.05;
    iva <- precioFinal * 0.12;
    
    precioFinal <- precioFinal - descuento + iva;
    
    Escribir "El precio final del embarque es:", precioFinal;
	
FinFuncion
//----------------------------------------------------------------------------------------------------
//12) Fábricas "El cometa" produce artículos con claves (1, 2, 3, 4, 5 y 6). Se requiere un
//algoritmo para calcular los precios de venta, para esto hay que considerar lo siguiente:
//Costo de producción = materia prima + mano de obra + gastos de fabricación.
//Precio de venta = costo de producción + 45 % de costo de producción.
//El costo de la mano de obra se obtiene de la siguiente forma: para los productos con clave 3 o
//4 se carga 75 % del costo de la materia prima; para los que tienen clave 1 o 5 se carga 80 %, y
//para los que tienen clave 2 o 6, 85 %.
//Para calcular el gasto de fabricación se considera que, si el artículo que se va a producir tiene
//claves 2 o 5, este gasto representa 30 % sobre el costo de la materia prima; si las claves son 3 o
//6, representa 35 %; si las claves son 1 o 4, representa 28 %. La materia prima tiene el mismo
//costo para cualquier clave.
funcion materia_prima
	Definir clave Como Entero;
	Definir CostoMateriaPrima Como Real;
	Escribir "Ingrese el costo de la materia prima";
	Leer costoMateriaPrima;
	Escribir "Ingrese la clave";
	Leer clave;
	Si clave = 3 o clave = 4 Entonces
		costoManoObra <- 0.75 * costoMateriaPrima;
	Sino
		Si clave = 1 o clave = 5 Entonces
			costoManoObra <- 0.80 * costoMateriaPrima;
		Sino
			costoManoObra <- 0.85 * costoMateriaPrima;
		FinSi
	FinSi
	
	// Calcular el costo de los gastos de fabricación
	Si clave = 2 o clave = 5 Entonces
		costoGastosFabricacion <- 0.30 * costoMateriaPrima;
	Sino
		Si clave = 3 o clave = 6 Entonces
			costoGastosFabricacion <- 0.35 * costoMateriaPrima;
		Sino
			costoGastosFabricacion <- 0.28 * costoMateriaPrima;
		FinSi
	FinSi
	
	// Calcular el costo de producción
	costoProduccion <- costoMateriaPrima + costoManoObra + costoGastosFabricacion;
	
	// Calcular el precio de venta
	precioVenta <- costoProduccion + 0.45 * costoProduccion;
	
	Escribir "El precio de venta del artículo es:", precioVenta;
FinFuncion
//---------------------------------------------------------------------------------------------------------
//14) Dado un número, determine si es capicúa.
//Nota: un número capicúa es aquel que se lee igual hacia adelante que hacia atrás.
funcion capicua(num)
	Escribir "Ingrese un numero";
	Leer num;
	Si num MOD 11 = 0 Entonces
		Escribir num, " es capicúa"; 
	SiNo 
		Escribir num, " no es capicúa" ;
		
	FinSi
FinFuncion
//----------------------------------------------------------------------------------------------------------
//16) Escribir un algoritmo que presente la suma de los divisores de un numero
funcion suma=divisores
	Definir  suma, divisor Como Entero;
	
	Escribir "Ingrese un número: ";
	Leer num;
	
	suma <- 0;
	
	Para divisor <- 1 Hasta num Hacer
		Si num % divisor = 0 Entonces
			suma <- suma + divisor;
		FinSi
	FinPara
	Escribir "La suma de los divisores de ", num, " es: ", suma;
	
FinFuncion
//------------------------------------------------------------------------------------------------------------
//18) Escribir un algoritmo que indique si un número es perfecto
//Nota: un número es perfecto cuando la suma de los divisores del número incluido el 1 y
//excluido el propio número es igual al numero
//Ejemplo: numero=6: los divisores del 6 son: 1+2+3=6
funcion perfecto(num)
	Definir  suma, divisor Como Entero;
	Escribir "ingrese un numero";
	leer num;
    suma <- 0;
	
    Para divisor <- 1 Hasta num - 1 Hacer
        Si num % divisor = 0 Entonces
            suma <- suma + divisor;
        FinSi
    FinPara
	
    Si suma = num Entonces
        Escribir "El número ", num, " es un número perfecto.";
    Sino
        Escribir "El número ", num, " no es un número perfecto.";
    FinSi
FinFuncion
//-------------------------------------------------------------------------------------------------------------
//20) Dado dos números determinar si son primos gemelos.
//Nota: Dos números son primos gemelos si los dos son primos y su resta en valor absoluto es
//igual a 2. Ejemplo: 7 y 5
funcion primos_gemelos
	Definir num1, num2, i, j, esPrimo1, esPrimo2 Como Entero;
	
    Escribir "Ingrese el primer número: ";
    Leer num1;
	
    Escribir "Ingrese el segundo número: ";
    Leer num2;
	
    esPrimo1 <- 1;
    esPrimo2 <- 1;
	
    Para i <- 2 Hasta num1 / 2 Hacer
        Si num1 % i = 0 Entonces
            esPrimo1 <- 0;
            
        FinSi
    FinPara
	
    Para j <- 2 Hasta num2 / 2 Hacer
        Si num2 % j = 0 Entonces
            esPrimo2 <- 0;
            
        FinSi
    FinPara
	
    Si esPrimo1 = 1 Y esPrimo2 = 1 Y Abs(num1 - num2) = 2 Entonces
        Escribir num1, " y ", num2, " son primos gemelos.";
    Sino
        Escribir num1, " y ", num2, " no son primos gemelos.";
    FinSi
FinFuncion

//----------------------------------------------------------------------------------------------------------------

//Operaciones con cadenas y arreglos
//2) Implementa un programa que calcule el promedio de los elementos pares e impares en un
//arreglo de números enteros y los copie en otro arreglo.
//Ejemplo:
//arreglo[2,3,4,7] areglo2[3,5]
funcion pares_impares
	Dimension arreglo[4]; 
    Dimension arregloPares[4] ;
	Dimension arregloImpares[4] ;
	Definir promedioPares, promedioImpares Como Real;
    Definir contador, contadorPares, contadorImpares Como Entero;
	
	// Leer valores para el arreglo
    Para contador<-0 Hasta 3 Hacer
        Escribir "Ingrese un número: ";
        Leer arreglo[contador];
    FinPara
	
	contadorPares <- 0;
    contadorImpares <- 0;
	
    // Separar números pares e impares y calcular los promedios
    Para contador <- 0 Hasta 3 Hacer
        Si arreglo[contador] MOD 2 = 0 Entonces
            contadorPares <- contadorPares + 1;
            arregloPares[contadorPares] <- arreglo[contador];
        Sino
            contadorImpares <- contadorImpares + 1;
            arregloImpares[contadorImpares] <- arreglo[contador];
        FinSi
    FinPara
	
    // Calcular el promedio de los números pares
    promedioPares <- 0;
    Para contador <- 1 Hasta contadorPares Hacer
        promedioPares <- promedioPares + arregloPares[contador];
    FinPara
    promedioPares <- promedioPares / contadorPares;
	
    // Calcular el promedio de los números impares
    promedioImpares <- 0;
    Para contador <- 1 Hasta contadorImpares Hacer
        promedioImpares <- promedioImpares + arregloImpares[contador];
    FinPara
    promedioImpares <- promedioImpares / contadorImpares;
	
	
	Escribir "Arreglo original: ";
    Para contador <- 0  Hasta 3 Hacer
        Escribir arreglo[contador];
    FinPara
	Escribir "Promedio de números pares: ", promedioPares;
    Escribir "Promedio de números impares: ", promedioImpares;
	
FinFuncion
//---------------------------------------------------------------------------------------------------------
//4) Implementa un programa que copie los números de un arreglo a 2 arreglos en uno los
//números positivos y en el otro los negativos Ejemplo:
//arreglo=[2,-6,4,-9, 12] arregloPositivo=[2,4,12] arregloNegativo[-6,-9]
funcion positivos_negativos
	Dimension arreglo[6];
    Dimension arregloPositivo[6] ;
    Dimension arregloNegativo[6];
    Definir contador, contadorPositivo, contadorNegativo Como Entero;
	
    Para contador <- 0 Hasta 4 Hacer
        Escribir "Ingrese un número: ";
        Leer arreglo[contador];
    FinPara
	
    contadorPositivo <- 0;
    contadorNegativo <- 0;
	
    // Separar números positivos y negativos
    Para contador<-0 Hasta 4 Hacer
        Si arreglo[contador] > 0 Entonces
            contadorPositivo <-contadorPositivo + 1;
            arregloPositivo[contadorPositivo] <-arreglo[contador];
        Sino
            contadorNegativo <-contadorNegativo + 1;
            arregloNegativo[contadorNegativo] <-arreglo[contador];
        FinSi
    FinPara
	
    // Mostrar los arreglos resultantes
    Escribir "Arreglo original: ";
    Para contador<-0  Hasta 4 Hacer
        Escribir arreglo[contador];
    FinPara
    Escribir "Arreglo de números positivos: ";
    Para contador <-1 Hasta contadorPositivo Hacer
        Escribir arregloPositivo[contador];
    FinPara
    Escribir "Arreglo de números negativos: ";
    Para contador <-1 Hasta contadorNegativo Hacer
        Escribir arregloNegativo[contador];
    FinPara
FinFuncion
//-------------------------------------------------------------------------------------------------------------------
//6) Leer una secuencia de números hasta que se ingrese un 0
//y almacenarlos en un arreglo
//Se pide recorrer el arreglo y mostrar la suma del cuadrado de cada numero.
//Ejemplo: secuencia: 4,3,2,5,0
//arreglo=[4,3,2,5]
//exponentes= 16 9 4 25
//respuestaSuma=54
funcion cuadrado
	Definir num Como Entero;
    Dimension secuencia_cuadrado[5];
    Definir i, sumaCuadrados Como Entero;
	sumaCuadrados <- 0;
    
    i <- 0;
	Escribir "Ingrese una secuencia de números (0 para terminar):";
    Leer num;
	secuencia_cuadrado[i] <- num;
	
    Mientras num <> 0 Hacer
        sumaCuadrados <- sumaCuadrados + num * num;
        
        i <- i + 1;
		Leer num;
    FinMientras
    
    
    Escribir "Suma de cuadrados:", sumaCuadrados;
FinFuncion

//---------------------------------------------------------------------------------------------------------------------------
//8) Leer una secuencia de números hasta que se ingrese un numero negativo
//y almacenarlos en un arreglo
//Se pide recorrer el arreglo y mostrar la suma de cada número elevado al cubo.
//Ejemplo: secuencia: 4,3,2,5,-1
//arreglo=[4,3,2,5]
//exponentes= 64 27 8 125
//respuestaSuma=224
funcion cubo
	Definir num Como Entero;
    Dimension secuencia_cubo[5];
    Definir i Como Entero;
	sumaCubos <- 0;
    i <- 0;
	Escribir "Ingrese una secuencia de números (0 para terminar):";
    Leer num;
	secuencia_cubo[i] <- num;
	
    Mientras num <> 0 Hacer
        sumaCubos <- sumaCubos + num * num * num;
        
        i <- i + 1;
		Leer num;
    FinMientras
    
    
    Escribir "Suma de cubos:", sumaCubos;
FinFuncion

//----------------------------------------------------------------------------------------------------------------------------------
//12) Leer una secuencia de números hasta que se ingrese un 0
//y almacenarlos en arreglo. Se pide recorrer el arreglo y pasar a otro
//arreglo solo los números pares de cada elemento del arreglo1
//Ejemplo: secuencia: 4,3,6,9,0
//		arreglo1=[4,3,6,9] arreglo2= [4,6]
funcion pares(num)
    Dimension arreglo1[6];
    Dimension arreglo2[6];
    Definir i, j Como Entero;
    
    i <- 0;
    j <- 0;
    
    // Leer números hasta que se ingrese un 0
    Escribir "Ingrese una secuencia de números (0 para terminar):";
    Leer numero;
    
    Mientras numero <> 0 Hacer
        // Agregar el número al arreglo1
        arreglo1[i] <- numero;
        
        // Si el número es par, agrégalo al arreglo2
        Si numero  % 2 = 0 Entonces
            arreglo2[j] <- numero;
            j <- j + 1;
        FinSi
        
        i <- i + 1;
        
        // Leer el próximo número
        Leer numero;
    FinMientras
    
    Escribir "Arreglo1:";
    Para i <- 0 Hasta i - 1 Hacer
        Escribir arreglo1[i];
    FinPara
    
    Escribir "Arreglo2 (números pares de arreglo1):";
    Para i <- 0 Hasta j - 1 Hacer
        Escribir arreglo2[i];
    FinPara
FinFuncion

//----------------------------------------------------------------------------------------------------
//		14) Elaborar un algoritmo que lea una serie de edades de los alumnos de la facultad FACI y
//		los guarde en un arreglo. Se pide:
//			· calcular el promedio general de las edades de los alumnos
//			· La cantidad y el promedio de las edades mayores o iguales a 18
//			· La cantidad y el promedio de las edades menores a 18
//		Ejemplo:
//			Edades=[20,17,20,23]
//			promedioGeneral=20
//			cantMayorIgual18= 3, promedioMayorIgual18=21
//			cantMenor18= 1, promedioMenor18=17
funcion edades_alumnos
	Dimension edades[6];
    Definir sumaEdades, sumaMayorIgual18, sumaMenor18, contador, contadorMayorIgual18, contadorMenor18 Como Entero;
    Definir promedioGeneral, promedioMayorIgual18, promedioMenor18 Como Real;
    
    contador <- 0;
    contadorMayorIgual18 <- 0;
    contadorMenor18 <- 0;
    sumaEdades <- 0;
    sumaMayorIgual18 <- 0;
    sumaMenor18 <- 0;
    
    // Leer edades de los alumnos y almacenarlas en el arreglo
    Escribir "Ingrese las edades de los alumnos (ingrese -1 para finalizar):";
    Leer edades[contador];
    
    Mientras edades[contador] <> 0 Hacer
        sumaEdades <- sumaEdades + edades[contador];
        contador <- contador + 1;
		Leer edades[contador];
    FinMientras
    
    // Calcular el promedio general
    promedioGeneral <-(sumaEdades) / contador;
	
	// Calcular la cantidad y el promedio de edades mayores o iguales a 18
    Para i <-0 Hasta contador - 1 Hacer
        Si edades[i] >= 18 Entonces
            sumaMayorIgual18 <-sumaMayorIgual18 + edades[i];
            contadorMayorIgual18 <- contadorMayorIgual18 + 1;
        Sino
            sumaMenor18 <- sumaMenor18 + edades[i];
            contadorMenor18 <- contadorMenor18 + 1;
        FinSi
    FinPara
	
    // Calcular el promedio de edades mayores o iguales a 18
    promedioMayorIgual18 <- (sumaMayorIgual18) / contadorMayorIgual18;
    
    // Calcular el promedio de edades menores de 18
    promedioMenor18 <- (sumaMenor18) / contadorMenor18;
    
    // Mostrar resultados
    Escribir "Promedio General: ", promedioGeneral;
    Escribir "Cantidad de edades mayores o iguales a 18: ", contadorMayorIgual18;
    Escribir "Promedio de edades mayores o iguales a 18: ", promedioMayorIgual18;
    Escribir "Cantidad de edades menores a 18: ", contadorMenor18;
    Escribir "Promedio de edades menores a 18: ", promedioMenor18;
	
FinFuncion

//----------------------------------------------------------------------------------------------------
//			16) Elaborar un algoritmo que lea una serie de sueldos de los empleados de la unemi y los
//			guarde en un arreglo. Se pide:
//				· Presentar el sueldo más alto de los empleados
//				· La cantidad y el promedio de os sueldos de los empleados
//			Ejemplo:
//				sueldos=[500,700,800,600]
//				SueldoMasAlto= 800

funcion sueldos_empleados
	Dimension sueldos[7];
    Definir sueldo, sueldoMasAlto, sumaSueldos Como Entero;
    Definir cantidadSueldos Como Entero;
    Definir promedioSueldos Como Real;
    
    sueldoMasAlto <- 0;
    sumaSueldos <- 0;
    cantidadSueldos <- 0;
    
    // Leer sueldos de los empleados y almacenarlos en el arreglo
    Escribir "Ingrese los sueldos de los empleados (ingrese -1 para finalizar):";
    Leer sueldo;
    
    Mientras sueldo <> 0 Hacer
        Si sueldo > 0 Entonces
            sueldos[cantidadSueldos] <- sueldo;
            sumaSueldos <- sumaSueldos + sueldo;
            cantidadSueldos <- cantidadSueldos + 1;
        Sino
            Escribir "Sueldo inválido. Ingrese un sueldo válido.";
        FinSi
        
        Leer sueldo;
    FinMientras
    
    // Buscar el sueldo más alto
    Para i <- 0 Hasta cantidadSueldos - 1 Hacer
        Si sueldos[i] > sueldoMasAlto Entonces
            sueldoMasAlto <- sueldos[i];
        FinSi
    FinPara
    
    // Calcular el promedio de los sueldos
    promedioSueldos <- (sumaSueldos) / cantidadSueldos;
    
    // Mostrar resultados
    Si cantidadSueldos > 0 Entonces
        Escribir "Sueldo más alto: ", sueldoMasAlto;
        Escribir "Cantidad de sueldos: ", cantidadSueldos;
        Escribir "Promedio de sueldos: ", promedioSueldos;
    Sino
        Escribir "No se ingresaron sueldos válidos.";
    FinSi
FinFuncion

//----------------------------------------------------------------------------------------------------
//18) Indicar cuantas ,.;: hay en una cadena"
Funcion contador=ContarSignos
    Definir caracterBuscado Como Caracter;
    Definir contador Como Entero;
    contador <- 0;
    
    Escribir "Ingrese una cadena de texto:";
    Leer cadena;
    
	long <- longitud(cadena);
	Para  i <- 0 Hasta long con Paso 1 hacer
		caracter<-SubCadena(cadena,i,i);
		si caracter = "," o caracter == "." o caracter == ";" o caracter == ":" Entonces
			contador <- contador+1;
		FinSi
	FinPara
    
	
FinFuncion

//----------------------------------------------------------------------------------------------------
//20)Indicar cuantas palabras hay en una frase asumiendo 1 o varios espacios entre palabras"
Funcion contador=ContarPalabras
	Definir i, contador Como Entero;
    Definir enPalabra Como Logico;
    contador <- 0;
    enPalabra <- Falso;
	Escribir "Ingrese una frase";
	Leer frase;
    
    Para i <- 0 Hasta Longitud(frase) - 1 Hacer
        Si subcadena(frase,i,i) <> ' ' Entonces
            Si enPalabra = Falso Entonces
                contador <- contador + 1;
                enPalabra <- Verdadero;
            FinSi
        Sino
            enPalabra <- Falso;
        FinSi
    FinPara
	Escribir "La palabra tiene: ",contador," palabras";
FinFuncion

//----------------------------------------------------------------------------------------------------
//22) Indicar si una palabra es palíndroma". Ejemplo: "ana" es palíndroma por se lee igual de
//inicio a fin que de fin a inicio

Funcion InvertirPalabra
	Definir cad1,cad2 Como Caracter;
	Definir posicion Como Entero;
	cad2 <- "";
	Escribir "Introduce una cadena:";
	Leer cad1;
	Para posicion<-Longitud(cad1)-1 Hasta 0 Con Paso -1 Hacer
		cad2 <- Concatenar(cad2,Subcadena(cad1,posicion,posicion));
	FinPara
	Si cad1=cad2 Entonces
		Escribir "Es un palíndromo";
	SiNo
		Escribir "No es un palíndromo";
	FinSi
FinFuncion

//----------------------------------------------------------------------------------------------------
//Dada n realizar un algoritmo que presente la siguiente secuencia
//	n=6
//	respuesta= 2 2 4 8 32 256
//Muestro el arreglo
Funcion Secuencia
	Definir arreglo,i Como Entero;
	Dimension arreglo[6];
	arreglo(0)<-2;
	arreglo(1)<-2;
	arreglo(2)<-4;
	arreglo(3)<-8;
	arreglo(4)<-32;
	arreglo(5)<-256;
	Para i<-0 hasta 5 con paso 1 Hacer
		Escribir arreglo[i];
	FinPara
	
FinFuncion
//--------------------------------------------------------------------------
//Dada n realizar un algoritmo que presente la siguiente secuencia
//	n=6
//	respuesta= 20 5 15 10 5 -5 0
//Muestro el arreglo
Funcion Secuencia2
	Definir arreglo,i Como Entero;
	Dimension arreglo[6];
	arreglo(0)<-20;
	arreglo(1)<-5;
	arreglo(2)<-15;
	arreglo(3)<-5;
	arreglo(4)<- -5;
	arreglo(5)<-0;
	Para i<-0 hasta 5 con paso 1 Hacer
		Escribir arreglo[i];
	FinPara
FinFuncion
//--------------------------------------------------------------------------
//Entrada contador=0 = num=0[leer]
//Proceso bucle contamos los numeros divisibles para 2
//Contamos numeros divisibles de 3 del arreglo
//Salida contador1 contador2
Funcion SecuenciaDeNumeros
	Definir contador,num, contador1 Como Entero;
	contador <- 0;
	num<-0;
	Mientras num >= 0 Hacer
		Escribir "Ingresa un numero";
		Leer num;
		Si num mod 2 = 0 Entonces
			contador1 <- contador1 + num;
		SiNo
			Si num mod 3 = 0 Entonces
				contador2 <- contador2 +1;
			FinSi
		FinSi
	FinMientras
	Escribir "La suma de los numeros pares es:",contador1;
	Escribir "La cantidad de numeros multiplos de 3 es: ",contador2;
FinFuncion
//--------------------------------------------------------------------------
//7) Leer una secuencia de números hasta que se ingrese un numero par.
//Mostrar la cantidad de los números mayores a 5 y la suma de los múltiplos de 5
//Ejemplo:
//secuencia: 3,5,15,7,9, 4
//Respuesta
//contMay5=3
//sumaMultiplos5=20
//Entrada contador=0 = num=0[leer]
//Proceso bucle contamos los numeros divisibles para 5
//Contamos numeros mayores que 5 del arreglo
//Salida contador1 contador2
//------------------------------------------------------------------------------------------------------
Funcion Secuencia5
	Dimension secuencia_[7];
	Definir contMay5, sumaMultiplos5 Como Entero;
    Definir numero, indice Como Entero;
	
    contMay5 <- 0;
    sumaMultiplos5 <- 0;
    indice <- 1;
	
    Escribir "Ingrese una secuencia de números. Para detenerse, ingrese un número par.";
	Leer numero;
    Mientras numero MOD 2 <> 0  Hacer
        Escribir "Ingrese un número: ";
        Leer numero;
		
        Si numero > 5 Entonces
            contMay5 <- contMay5 + 1;
        FinSi
		
        Si numero MOD 5 = 0 Entonces
            sumaMultiplos5 <- sumaMultiplos5 + numero;
        FinSi
		
        secuencia_[indice] <- numero;
        indice <- indice + 1;
    FinMientras
	
    Escribir "Secuencia ingresada:";
    Para indice <- 0 Hasta indice - 1 Hacer
        Escribir secuencia_[indice];
    FinPara
	
    Escribir "Cantidad de números mayores a 5: ", contMay5;
    Escribir "Suma de múltiplos de 5: ", sumaMultiplos5;
FinFuncion

//--------------------------------------------------------------------------
funcion contadorPalabras
	Dimension frases[50];
	Definir espacio, i, cantidad Como Entero;
	espacios<-0;i<-0;cantidad<-0;
	Escribir "Ingrese una frase";
	leer frase;
	cantidad<-Longitud(frase);
	frases[i]<- frase;
	
	Para i<-0 Hasta cantidad-1 con Paso 1 Hacer
		si subcadena(frase,i,i)=" " Entonces
			espacios<- espacios+1;
		FinSi
	FinPara
	Escribir "La frase tiene: ", espacios+1," palabras";
FinFuncion
//-----------------------------------------------------------------
//Con la variable frase que tiene que se una cadena 
//Entrada contador=1 long=0 pos=0
//Siempre va a haber almenos una palabra por eso contador vale 1
//Encuentro la longitud de la frase 
//Por cada espacio quiere decir que es una nueva palabra
//Proceso bucle for para contar los espacios 
//Salida contador
Funcion contador=ContadorDePalabras(frase)
	Definir contador,long,pos Como Entero;
	long<-Longitud[frase];
	Contador<-1;
	Para pos<-0 Hasta long Con Paso 1 Hacer
		Si Subcadena(frase,pos,pos)= " " Entonces
			Contador<-(contador+1);
		FinSi
	FinPara
	
	Escribir "El numero de palabras es: ",contador;
FinFuncion
//--------------------------------------------------------------------------
//Con la variable frase que tiene que se una cadena 
//Entrada contador=1 long=0 pos=0
//Encuentro la longitud de la frase 
//Por cada x aumento 1 al contador
//Proceso bucle for para contar las x
//Salida contador
Funcion contador=ContadorDeX(frase)
	Definir long,pos,contador Como Entero;
	long<-Longitud(frase);
	contador<-0;
	Para pos<-0 Hasta long con paso 1 Hacer
		Si Subcadena(frase,pos,pos) = "x" Entonces
			contador <- contador + 1;
		FinSi
	FinPara
	Escribir "Existen ",contador," ´x´ en la frase";
FinFuncion
//--------------------------------------------------------------------------
//Entrada num1=0[leer] num2=[leer] pos=0
//Proceso Bucle for ya que sabemos cuantas veces tenemos que repetir el bucle
//Desde el primero numero ,hasta el num2 recorrer
//Salida agregamos condicion para mostrar los numeros que sean mayores que 5
Funcion pos=NumerosMayoresA5
	Definir num1,num2,pos Como Entero;
	Escribir "Ingresa dos numeros";
	Leer num1,num2;
	Para pos<-num1 hasta num2 Con Paso 1 Hacer
		Si pos>5 Entonces
			Escribir pos; 
		FinSi
	FinPara
FinFuncion
//--------------------------------------------------------------------------
//Entrada Entrada num1=0[leer] num2=[leer] pos=0
//Proceso Si num1 debe ser mayor que num2 para que se pueda ejecutar
//bucle for para extraer los numero que sean divisibles del 3
//Salida agregamos condicion para mostrar los numeros que sean mayores que 5
Funcion NumerosImparesArreglo
	Definir num1,num2,pos Como Entero;
	Escribir "Ingresa dos digitos ";
	Leer num1,num2;
	Si num1 < num2 Entonces
		Para pos<-num1+1 Hasta num2-1 Con Paso 1 Hacer
			Si pos mod 3 = 0 Entonces
				Escribir pos;
			FinSi
		FinPara
	SiNo
		Escribir "El primer numero debe ser menor que el segundo";
	FinSi
	
FinFuncion
//--------------------------------------------------------------------------
//Entrada frase=cadena[leer] frase2=cadena[leer] x=0,z=0
//Proceso extraemos la longitud de ambas cadenas en x z
//Salida comparamos x y z
Funcion MayorDeDosFrases
	Definir frase,frase2 Como Caracter;
	Definir x,z Como Entero;
	Escribir "Ingresa una frase";
	Leer frase ;
	Escribir "Ingresa la segunda frase";
	Leer frase2;
	x<-Longitud(frase);
	z<-Longitud(frase2);
	Si x > z Entonces
		Escribir "La primera frase el mas grande";
	SiNo
		Si x < z Entonces
			Escribir "La segunda frase el mas grande";
		SiNo
			Escribir "Son iguales";
		FinSi	
	FinSi
FinFuncion
//--------------------------------------------------------------------------
//Entrada conv=0,conc=0,long=0 frase=cadena[leer]
//Proceso guardo cada valor de la frase en long
//Bucle for desde pos=0 hasta long -1 
//Segun vocal de la subcadena(frase,pos,pos)
//Conv +1     Segun subcadena(frase,pos,pos) conc +1
//Salida muestro conc conv 
Funcion cont=ContadorFrase(frase)
	Definir conv,conc,long Como Entero;
	
	long<-Longitud(frase);
	Para pos<-0 Hasta long-1 Con Paso 1 Hacer
		Segun Subcadena(frase,pos,pos) Hacer
			"a","e","i","o","u":
				conv<-conv+1;
			"b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","w","v","y","x","z":
				conc<-conc+1;
		FinSegun
	FinPara
	Escribir "El número de vocales de la frase es: ",conv;
	Escribir "El número de consonantes de la frase es: ",conc;
	Escribir "La frase tiene ",long," caracteres";
FinFuncion
//--------------------------------------------------------------------------
//Entrada suma=0,digito=[leer],x=0
//Proceso desde 0 hasta 9 
//Todas las cedulas tienen 10 digitos
//Blucle para ingresar los digitos 
//sumo digito por digito ingresado
//Salida suma
Funcion suma=SumaDeNumCedula
	Definir suma,digito,x Como Entero;
	Para x<-0 Hasta 9 Con Paso 1 Hacer
		Escribir "Ingresa tu numero de cedula digito por digito";
		Leer digito;
		suma<-suma+digito;
	FinPara
	Escribir "La suma de los dígitos es: ",suma;
FinFuncion

//--------------------------------------------------------------------------
//Entrada pos=0,long=0 frasen=cadena,buscar=cadena
//Proceso saco la longitud de la frase 
//Para pos=0 Hasta long Con Paso 1 Hacer
//Si Subcadena(frase,pos,pos)=buscar Entonces
//x=pos+1	
//Salida muestro x
Funcion x=Pocicion(frase)
	Definir pos,long,x Como Entero;
	Definir frasen,buscar Como Caracter;
	Escribir "Ingrese una frase";
	Leer frase;
	Escribir "Ingrese el caracter que desea buscar";
	Leer buscar;
	long<-Longitud(frase);
	Para pos<-0 Hasta long Con Paso 1 Hacer
		Si Subcadena(frase,pos,pos)=buscar Entonces
			x<-pos+1;	
		FinSi
	FinPara
	Escribir "El caracter se encuentra en la posicion ",x;
FinFuncion

//------------------------------------------------------------------------------------------------

// Funciones o SubAlgoritmo  del proyecto
// SubAlgoritmo menus del proyecto
Funcion opcion=presentarMenu(titulo,menu,lim)
	Definir opcion Como Caracter;
	Definir pos Como Entero;
	Borrar Pantalla;
	Escribir titulo;
	Para pos<-0 Hasta lim-1 Con Paso 1 Hacer
		Escribir menu[pos];
	Fin Para
	Escribir "Elija opción[1..",lim,"]" Sin Saltar;
	leer opcion;
FinFuncion


// Algoritmo principal del proyecto
Algoritmo Proyecto
		Definir menuPrincipal,menuNumeros,menuCadenas,menuCadenasYArreglos,titulo,titulo2,opc,opcn,apcc,apca Como Caracter;
		Definir pos,lim Como Entero;
		Dimension menuPrincipal[3],menuNumeros[22],menuCadenasYArreglos[24];
		// Arreglo menu principal
		menuPrincipal[0] <- "  1)Ejercicios con Numeros";
		menuPrincipal[1] <- "  2)Ejercicios de Cadenas y Arreglos";
		menuPrincipal[2] <- "  3)Salir";
	
	// arreglo submenu numeros
	menuNumeros[0] <- "  1)Determinar cuánto se debe pagar por cierta cantidad de colas";
	menuNumeros[1] <- "  2)Precio inicial al kilo de uva";
	menuNumeros[2] <- "  3)Reciduo de dos números";
	menuNumeros[3] <- "  4)Política cobrar la consulta con base en el número de cita";
	menuNumeros[4] <- "  5)Algoritmo que determine si un numero es la mitad y si un numero es divisor de otro";
	menuNumeros[5] <- "  6)Banco XYZ aumento del límite de crédito de las tarjetas de crédito";
	menuNumeros[6] <- "  7)Algoritmo que determine si un numero es divisor del otro y uno es el doble del otro";
	menuNumeros[7] <- "  8)Banco Poo aumento del límite de crédito de las tarjetas de crédito";
	menuNumeros[8] <- "  9)Mostrar si un numero es negativo menor que -20";
	menuNumeros[9] <- "  10)precio inicial al quintal de pitajaya";
	menuNumeros[10] <- "  11)Mostrar si un numero es menor que 10";
	menuNumeros[11] <- "  12)Calcular los precios de venta Fabrica de Cometas";
	menuNumeros[12] <- "  13)Calcular cuántos dígitos tiene una cifra";
	menuNumeros[13] <- "  14)Determine si un numero es capicúa";
	menuNumeros[14] <- "  15)Algoritmo que presente los divisores de un numero";
	menuNumeros[15] <- "  16)Algoritmo que presente la suma de los divisores de un numero";
	menuNumeros[16] <- "  17)Algoritmo que presente la cantidad de los divisores de un numero";
	menuNumeros[17] <- "  18)Algoritmo que indique si un número es perfecto";
	menuNumeros[18] <- "  19)Determinar si es un número primo";
	menuNumeros[19] <- "  20)Determinar si dos numeros son primos gemelos";
	menuNumeros[20] <- "  21)Determinar si dos numeros son amigos";
	menuNumeros[21] <- "  22)Salir";
	
	// arreglo submenu arreglos
	menuCadenasYArreglos[0] <- "1)Algoritmo que presente una secuencia";
	menuCadenasYArreglos[1] <- "2)Calcular el promedio de los elementos pares e impares de un arreglo";
	menuCadenasYArreglos[2] <- "3)Algoritmo que presente una secuencia";
	menuCadenasYArreglos[3] <- "4)Separador de numeros positivos y negativos";
	menuCadenasYArreglos[4] <- "5)La suma de los pares y la cantidad de los números que son múltiplo de 3 de un arreglo";
	menuCadenasYArreglos[5] <- "6)Mostrar la suma del cuadrado de cada numero de un arreglo.";
	menuCadenasYArreglos[6] <- "7)Mostrar la cantidad de los números mayores a 5 y la suma de los múltiplos de 5";
	menuCadenasYArreglos[7] <- "8)Mostrar la suma de cada número elevado al cubo de un arreglo";
	menuCadenasYArreglos[8] <- "9)Dado una frase indicar cuantas palabras tiene";
	menuCadenasYArreglos[9] <- "10)Cambiar cada elemento de un arreglo por su doble";
	menuCadenasYArreglos[10] <-"11)Mostrar cuantos ´x´ se ingresaron en un arreglo";
	menuCadenasYArreglos[11] <- "12)Pasar a otro un arreglo a otro solo los números pares de cada elemento";
	menuCadenasYArreglos[12] <- "13)Presentar los valores mayores a 5 entre ellos incluidos el numero inicial y final";
	menuCadenasYArreglos[13] <- "14)Calcular el promedio general de las edades de los alumnos";
	menuCadenasYArreglos[14] <- "15)Presentar los valores impares comprendidos entre dos numeros";
	menuCadenasYArreglos[15] <- "16)Presentar el sueldo más alto de los empleados";
	menuCadenasYArreglos[16] <- "17)Dadas dos frase indicar la de mayor longitud";
	menuCadenasYArreglos[17] <- "18)Indicar cuantas ,.;: hay en una cadena";
	menuCadenasYArreglos[18] <- "19)Dado una cadena indicar cuantas vocales, consonantes y dígitos hay";
	menuCadenasYArreglos[19] <- "20)Indicar cuantas palabras hay en una frase asumiendo 1 o varios espacios entre palabras";
	menuCadenasYArreglos[20] <- "21)  Presentar la suma de los dígitos de una cedula";
	menuCadenasYArreglos[21] <- "22) Indicar si una palabra es palíndroma";
	menuCadenasYArreglos[22] <- "23) Presentar la posición de un carácter cualquiera dentro de una cadena";
	menuCadenasYArreglos[23] <- "24) Salir";
	//--------------------------------
	
	opc<-"";
    Mientras opc <> "3" Hacer
		Borrar Pantalla;
		opc<-presentarMenu("Menu Principal",menuPrincipal,3);
		Segun opc Hacer
			"1":
				opcn <-"";
				Mientras opcn <> "22" Hacer        
					opcn<-presentarMenu("Menu Numeros",menuNumeros,22);
					Segun opcn Hacer
						
						"1":
							Escribir "1)Determinar cuánto se debe pagar por cierta cantidad de colas";
							Definir pagar Como Real;
							pagar<-CalculaPrecioColas(25);
							Esperar 10 Segundos;
						"2":
							Escribir "2)Precio inicial al kilo de uva";
							Ejercicio2(140,"A",1);
							Esperar  10 Segundos;
						"3":
							Escribir "3)Reciduo de dos números";
							reciduo<-CalcularReciduo(10,5);
							Esperar  10 Segundos;
						"4":
							Escribir "4)Política cobrar la consulta con base en el número de cita";
							consulta;
							Esperar 10 Segundos;
						"5":
							Escribir "5)Algoritmo que determine si un numero es la mitad y si un numero es divisor de otro";
							Comparacion1(10,5,6,3);
							Esperar 10 Segundos;
						"6":
							Escribir "6)Banco XYZ aumento del límite de crédito de las tarjetas de crédito";
							nuevo_limite<-Ejercicio6;
							Escribir "El nuevo límite de crédito es: ", nuevo_limite;
							//----------------------------------------
							Esperar 10 Segundos;
						"7":
							Escribir "7)Algoritmo que determine si un numero es divisor del otro y uno es el doble del otro";
							Comparacion2(2,3,4,5);
							Esperar 10 Segundos;
						"8":
							Escribir "8)Banco Poo aumento del límite de crédito de las tarjetas de crédito";
							nuevo_limite<-Ejercicio6;
							Escribir "El nuevo límite de crédito es: ", nuevo_limite;
							Esperar 10 Segundos;
						"9":
							Escribir "9)Mostrar si un numero es negativo menor que -20";
							CompararUnNumero();
							Esperar 10 Segundos;
						"10":
							Escribir "10)precio inicial al quintal de pitajaya";
							Ejercicio2(140,"Amarilla",1);
							Esperar 10 Segundos;
						"11":
							Escribir "11)Mostrar si un numero es menor que 10";
							CompararUnNumero2();
							Esperar 10 Segundos;
						"12":
							Escribir "12)Calcular los precios de venta Fabrica de Cometas";
							materia_prima;
							Esperar 10 Segundos;
						"13":
							Escribir "13)Calcular cuántos dígitos tiene una cifra";
							contador<-CantidadDeDigitos(1555);
							Esperar 10 Segundos;
						"14":
							Escribir "14)Determine si un numero es capicúa";
							capicua(11);
							Esperar 10 Segundos;
						"15":
							Escribir "15)Algoritmo que presente los divisores de un numero";
							ContarDivisores(8);
							Esperar 10 Segundos;
						"16":
							Escribir "16)Algoritmo que presente la suma de los divisores de un numero";
							DivisoresDeUnNumero(12);
							Esperar 10 Segundos;
						"17":
							Escribir "17)Algoritmo que presente la cantidad de los divisores de un numero";
							SumaDivisores(9);						
							Esperar 10 Segundos;
						"18":
							Escribir "18)Algoritmo que indique si un número es perfecto";
							perfecto(6);
							Esperar 10 Segundos;
						"19":
							Escribir "19)Determinar si es un número primo";
							NumeroPrimo(6);
							Esperar 10 Segundos;
						"20":
							Escribir "20)Determinar si dos numeros son primos gemelos";
							primos_gemelos;
							Esperar 10 Segundos;
						"21":
							Escribir "21)Determinar si dos numeros son amigos";
							NumerosAmigos();
							Esperar 10 Segundos;
						"22":
							Escribir "22)Regresando al Menu Principal";
							Esperar 3 Segundos;
						De Otro Modo:
							Escribir "Opcion invalida...";
							Esperar 2 Segundos;
					Fin Segun
				FinMientras
				
			"2":
				opcn<-"";
				Mientras opcn <> "24" Hacer 
					opcn<-presentarMenu("Menu Cadenas y Arreglos",menuCadenasYArreglos,24);
					Segun opcn Hacer
						"1":
							
							Escribir "Secuencia";
							Secuencia;
							Esperar 10 Segundos;
						"2":
							Escribir "positivos y negativos";
							positivos_negativos;
							Esperar 10 Segundos;
						"3":
							Escribir "Secuencia 2";
							Secuencia2;
							Esperar 10 Segundos;
						"4":
							Escribir "pares y impares";
							pares_impares;
							Esperar 10 Segundos;
						"5":
							Escribir "Secuencia de números";
							SecuenciaDeNumeros;
							Esperar 10 Segundos;
						"6":
							Escribir "Suma de cuadrados";
							cuadrado;
							Esperar 10 Segundos;
						"7":
							Escribir "Secuencia de números #2";
							Secuencia5;
							Esperar 10 Segundos;
						"8":
							Escribir "Suma de cubos";
							cubo;
							Esperar 10 Segundos;
						"9":
							Escribir "Palabras de una frase";
							contadorPalabras;
							Esperar 10 Segundos;
						"10":
							Escribir "";
							doble<-dobles;
							Escribir "El resultado es: ",doble;
							Esperar 10 Segundos;
						"11":
							Escribir "Contador de frase";
							contador<-ContadorDeX(frase);
							Esperar 10 Segundos;
						"12":
							Escribir "Números pares";
							pares(num);
							Esperar 10 Segundos;
						"13":
							
							Escribir "Mayores a 5";
							pos<-NumerosMayoresA5;
							Esperar 10 Segundos;
						"14":
							Escribir "Edades de alumnos";
							edades_alumnos;
							Esperar 10 Segundos;
						"15":
							Escribir "Arreglo de impares";
							NumerosImparesArreglo;
							Esperar 10 Segundos;
						"16":
							Escribir "Sueldo de empleados";
							sueldos_empleados;
							Esperar 10 Segundos;
						"17":
							Escribir "Frase con mayor longitud";
							MayorDeDosFrases;
							Esperar 10 Segundos;
						"18":
							Escribir "";
							contador<-ContarSignos;
							Escribir "La cantidad de ,.;: en la cadena es: ", contador;
							Esperar 10 Segundos;
						"19":
							Escribir "";
							cont<-ContadorFrase("hola amigo");
							Esperar 10 Segundos;
						"20":
							Escribir "";
							contador<-ContarPalabras;
							Escribir "Cantidad de palabras en la frase:", contador;
							Esperar 10 Segundos;
						"21":
							Escribir "";
							suma<-SumaDeNumCedula;
							Esperar 10 Segundos;
						"22":
							Escribir "Invertir una palabra";
							InvertirPalabra;
							Esperar 10 Segundos;
						"23":
							Escribir "Posición de una frase";
							x<-Pocicion(frase);
							Esperar 10 Segundos;
							
						"24":
							Escribir "Regresando al Menu Principal";
							Esperar 6 Segundos;
						De Otro Modo:
							Escribir "Opcion invalida...";
							Esperar 3 Segundos;
					Fin Segun
				FinMientras
				
			"3":
				Escribir "Gracias por usar el Sistema";
				Esperar 3 Segundos;
				
		Fin Segun
    Fin Mientras
FinAlgoritmo

Proceso CostoViajeEstudios
	Definir cantidadAlumnos Como Entero;
	Definir costoPorAlumno, costoTotal Como Real;
	Escribir 'Ingrese la cantidad de alumnos: ';
	Leer cantidadAlumnos;
	Si cantidadAlumnos>=100 Entonces
		costoPorAlumno <- 65.00;
		costoTotal <- cantidadAlumnos*costoPorAlumno;
	SiNo
		Si cantidadAlumnos>=50 Y cantidadAlumnos<=99 Entonces
			costoPorAlumno <- 70.00;
			costoTotal <- cantidadAlumnos*costoPorAlumno;
		SiNo
			Si cantidadAlumnos>=30 Y cantidadAlumnos<=49 Entonces
				costoPorAlumno <- 95.00;
			SiNo
				costoPorAlumno <- 0.00;
			FinSi
			Si costoPorAlumno=0.00 Entonces
				costoTotal <- 4000.00;
			SiNo
				costoTotal <- cantidadAlumnos*costoPorAlumno;
			FinSi
			
		FinSi
		
	FinSi
	Escribir 'El costo por alumno es: $', costoPorAlumno;
	Escribir 'El pago a la compañía de autobuses es: $', costoTotal;
FinProceso

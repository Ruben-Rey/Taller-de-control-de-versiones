//Realizar un programa el cual solicite su nombre, apellidos, edad y estatura.

Proceso primer_app
	
	Definir nombre Como Caracter;
	Definir apellido Como Caracter;
	Definir edad Como Entero;
	Definir estatura Como Real;
	
	Escribir  "�Cu�l es nombre?";
	leer nombre;
	
	Escribir  "�Cu�les son tus apellidos?";
	leer apellido;

	Escribir "�Cu�l es su edad?";
	leer edad;
	
	Escribir "�Cu�l es su estatura en metros?";
	leer estatura;
	
	Limpiar Pantalla;
	
	Escribir "Mi nombre y apellido es :", nombre, " ", apellido;
	Escribir "tengo :", edad, " a�os y de estatura de: ", estatura, "m";
	
FinProceso

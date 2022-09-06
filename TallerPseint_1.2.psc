//Realizar un programa el cual solicite su nombre, apellidos, edad y estatura.

Proceso primer_app
	
	Definir nombre Como Caracter;
	Definir apellido Como Caracter;
	Definir edad Como Entero;
	Definir estatura Como Real;
	
	Escribir  "¿Cuál es nombre?";
	leer nombre;
	
	Escribir  "¿Cuáles son tus apellidos?";
	leer apellido;

	Escribir "¿Cuál es su edad?";
	leer edad;
	
	Escribir "¿Cuál es su estatura en metros?";
	leer estatura;
	
	Limpiar Pantalla;
	
	Escribir "Mi nombre y apellido es :", nombre, " ", apellido;
	Escribir "tengo :", edad, " años y de estatura de: ", estatura, "m";
	
FinProceso

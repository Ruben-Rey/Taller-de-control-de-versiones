//Realizar un programa el cual solicite su nombre y apellidos, también debe capturar nombre y apellidos de su padre y madre. Al finalizar debe imprimir en pantalla el siguiente mensaje
//"Yo [Nombre Completo], soy hijo de [Nombre de la Madre] y [Nombre del Padre].

Proceso primer_app
	
	Definir nombre Como Caracter;
	Definir apellido Como Caracter;
	
	Definir nombreMama Como Caracter;
	Definir apellidoMama Como Caracter;
	
	Definir nombrePapa Como Caracter;
	Definir apellidoPapa Como Caracter;
	
	Escribir  "¿Cuál es su nombre?";
	leer nombre;
	Escribir  "¿Cuáles son tus apellidos?";
	leer apellido;

	Escribir "¿Cuál es el nombre de tu mamá?";
	leer nombreMama;
	Escribir "¿Cuál es el apellido de tu mamá?";
	leer apellidoMama;
	
	Escribir "¿Cuál es el nombre de tu papá";
	leer nombrePapa;
	Escribir "¿Cúal es el apellido de tu papá?";
	leer apellidoPapa;
	
	Limpiar Pantalla;
	
	Escribir "Yo ", nombre, " ", apellido, ", soy hijo de ", nombreMama, " y ", nombrePapa;
	
FinProceso

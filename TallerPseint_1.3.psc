//Realizar un programa el cual solicite su nombre y apellidos, tambi�n debe capturar nombre y apellidos de su padre y madre. Al finalizar debe imprimir en pantalla el siguiente mensaje
//"Yo [Nombre Completo], soy hijo de [Nombre de la Madre] y [Nombre del Padre].

Proceso primer_app
	
	Definir nombre Como Caracter;
	Definir apellido Como Caracter;
	
	Definir nombreMama Como Caracter;
	Definir apellidoMama Como Caracter;
	
	Definir nombrePapa Como Caracter;
	Definir apellidoPapa Como Caracter;
	
	Escribir  "�Cu�l es su nombre?";
	leer nombre;
	Escribir  "�Cu�les son tus apellidos?";
	leer apellido;

	Escribir "�Cu�l es el nombre de tu mam�?";
	leer nombreMama;
	Escribir "�Cu�l es el apellido de tu mam�?";
	leer apellidoMama;
	
	Escribir "�Cu�l es el nombre de tu pap�";
	leer nombrePapa;
	Escribir "�C�al es el apellido de tu pap�?";
	leer apellidoPapa;
	
	Limpiar Pantalla;
	
	Escribir "Yo ", nombre, " ", apellido, ", soy hijo de ", nombreMama, " y ", nombrePapa;
	
FinProceso

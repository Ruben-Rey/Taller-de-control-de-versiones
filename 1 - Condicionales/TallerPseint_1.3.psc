Proceso sin_titulo
	
	Definir edad Como Entero;
	Definir nombre, apellidos Como Caracter;
	
	Escribir "Ingrese los datos personales";
	Escribir "Nombre";
	Leer nombre;
	Escribir "Apellidos";
	Leer apellidos;
	Escribir "Edad";
	Leer edad;
	
	mayorDeEdad(edad, nombre, apellidos);
FinProceso

// Funcion si es mayor de edad
SubProceso mayorDeEdad ( edad, nombre, apellidos )

	SI edad >= 18 Entonces
		Escribir nombre, " ", apellidos, " usted es mayor de edad, por lo tanto puede entrar a la fiesta.";
	SiNo
		Escribir nombre, " ", apellidos, " usted es menor de edad, por lo tanto, no puede entrar a la fiesta, por favor devuélvase a su casa.";
	FinSi
FinSubProceso

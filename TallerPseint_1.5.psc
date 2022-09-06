//Realizar un programa el cual solicite el nombre de su mascota, edad de la mascota, el tipo de mascota y su nombre completo. Al finalizar el sistema debe e imprimir en pantalla el siguiente mensaje:
//	[Nombre de Mascota] es un(a) [Tipo de Mascota], el cual, tiene [Edad de la Mascota] años de edad y [Nombre Completo] es actualmente su dueño(a).

Proceso primer_app
	
	Definir nombreMascota Como Caracter;
	Definir edadMascota Como Entero;
	Definir tipoMascota Como Caracter;
	Definir nombreDueno Como Caracter;
	
	Escribir "¿Cúal es el nombre de su mascota?";
	Leer nombreMascota;
	
	Escribir "¿Cúal es la edad de la mascota? ";
	Leer edadMascota;
	
	Escribir "¿Qué tipo es su mascota?";
	Leer tipoMascota;
	
	Escribir  "Introduzca su nombre completo";
	Leer  nombreDueno;
	
	Limpiar Pantalla;
	
	Escribir nombreMascota, " es un(a) ", tipoMascota, " el cual, tiene ", edadMascota, " años de edad y ", nombreDueno, " es actualmente su dueño(a)";
	
FinProceso

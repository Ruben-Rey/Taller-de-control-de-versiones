//Realizar un programa el cual solicite el nombre de su mascota, edad de la mascota, el tipo de mascota y su nombre completo. Al finalizar el sistema debe e imprimir en pantalla el siguiente mensaje:
//	[Nombre de Mascota] es un(a) [Tipo de Mascota], el cual, tiene [Edad de la Mascota] a�os de edad y [Nombre Completo] es actualmente su due�o(a).

Proceso primer_app
	
	Definir nombreMascota Como Caracter;
	Definir edadMascota Como Entero;
	Definir tipoMascota Como Caracter;
	Definir nombreDueno Como Caracter;
	
	Escribir "�C�al es el nombre de su mascota?";
	Leer nombreMascota;
	
	Escribir "�C�al es la edad de la mascota? ";
	Leer edadMascota;
	
	Escribir "�Qu� tipo es su mascota?";
	Leer tipoMascota;
	
	Escribir  "Introduzca su nombre completo";
	Leer  nombreDueno;
	
	Limpiar Pantalla;
	
	Escribir nombreMascota, " es un(a) ", tipoMascota, " el cual, tiene ", edadMascota, " a�os de edad y ", nombreDueno, " es actualmente su due�o(a)";
	
FinProceso

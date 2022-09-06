//Realizar un programa el cual solicite el nombre de una ciudad capital y el país. Al finalizar debe imprimir en pantalla el siguiente mensaje 
//"La ciudad [Nombre de la Ciudad], es la capital del país [Nombre del País]

Proceso primer_app
	
	Definir pais Como Caracter;
	Definir ciudadCapital Como Caracter;
	
	Escribir "Ingrese su pais";
	Leer pais;
	
	Escribir "Ingrese la capital";
	Leer ciudadCapital;
	
	Limpiar Pantalla;
	
	Escribir "La ciudad ", ciudadCapital, " es la capital del país " , pais;
	
FinProceso

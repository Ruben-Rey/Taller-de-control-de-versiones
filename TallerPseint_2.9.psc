Proceso area_geometria
	
	Definir opcion, base, baseMenor, baseMayor, altura, area Como Entero;
	
	Escribir "Aplicación que cálcula el área";
	Escribir "Escoja una de las siguientes opciones a calcular";
	Escribir "1. Área de un rectángulo";
	Escribir "2. Área de un triángulo";
	Escribir "3. Área de un trapecio";
	Leer opcion;
	
	Limpiar Pantalla;
	Segun opcion Hacer
		1:
			Escribir "Área de un rectángulo";
			Escribir "Ingresar la base del rectángulo";
			Leer base;
			Escribir "Ingresar la altura del rectángulo";
			Leer altura;
			
			area <- (base * altura);
			Escribir "El Área de un rectángulo es :", area, " m2";
		2:
			Escribir "Área de un triángulo";
			Escribir "Ingresar la base del triángulo";
			Leer base;
			Escribir "Ingresar la altura del triángulo";
			Leer altura;
			
			area <- (base * altura)/2;
			Escribir "El Área de un triángulo es :", area, " m2";	
			
		3:
			Escribir "Área de un trapecio";
			Escribir "Ingresar la base menor del trapecio";
			Leer baseMenor;
			Escribir "Ingresar la base mayor del trapecio";
			Leer baseMayor;
			Escribir "Ingresar la altura del trapecio";
			Leer altura;
			
			area <- ((baseMenor + baseMayor)/2)*altura;
			Escribir "El Área de un trapecio es :", area, " m2";		
	FinSegun
	
FinProceso

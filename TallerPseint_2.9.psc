Proceso area_geometria
	
	Definir opcion, base, baseMenor, baseMayor, altura, area Como Entero;
	
	Escribir "Aplicaci�n que c�lcula el �rea";
	Escribir "Escoja una de las siguientes opciones a calcular";
	Escribir "1. �rea de un rect�ngulo";
	Escribir "2. �rea de un tri�ngulo";
	Escribir "3. �rea de un trapecio";
	Leer opcion;
	
	Limpiar Pantalla;
	Segun opcion Hacer
		1:
			Escribir "�rea de un rect�ngulo";
			Escribir "Ingresar la base del rect�ngulo";
			Leer base;
			Escribir "Ingresar la altura del rect�ngulo";
			Leer altura;
			
			area <- (base * altura);
			Escribir "El �rea de un rect�ngulo es :", area, " m2";
		2:
			Escribir "�rea de un tri�ngulo";
			Escribir "Ingresar la base del tri�ngulo";
			Leer base;
			Escribir "Ingresar la altura del tri�ngulo";
			Leer altura;
			
			area <- (base * altura)/2;
			Escribir "El �rea de un tri�ngulo es :", area, " m2";	
			
		3:
			Escribir "�rea de un trapecio";
			Escribir "Ingresar la base menor del trapecio";
			Leer baseMenor;
			Escribir "Ingresar la base mayor del trapecio";
			Leer baseMayor;
			Escribir "Ingresar la altura del trapecio";
			Leer altura;
			
			area <- ((baseMenor + baseMayor)/2)*altura;
			Escribir "El �rea de un trapecio es :", area, " m2";		
	FinSegun
	
FinProceso

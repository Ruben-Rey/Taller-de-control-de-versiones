Proceso sin_titulo
	
	Definir inicio, final, colum Como Entero;
	Definir inicio2, final2, colum2 Como Entero;
	Definir inicio3, final3, colum3  Como Entero;
	Definir inicio4, final4  Como Entero;
	Definir inicio5, final5 Como Entero;
	Definir inicio6, final6  Como Entero;
	Definir inicio7, final7  Como Entero;
	Definir inicio8, final8  Como Entero;


	Definir init Como Logico;
	init <- Verdadero;
	
	final <- 0;
	inicio <- 0;
	colum <- 0;
	
	final2 <- 9;
	inicio2 <- 0;
	colum2 <- 0;
	
	final3 <- 0;
	inicio3 <- 0;
	colum3 <- 0;
	
	final4 <- 9;
	inicio4 <- 0;
	
	final5 <- 2;
	inicio5 <- 0;
	
	final6 <- 8;
	inicio6 <- 0;
	
	final7 <- 1;
	inicio7 <- 0;
	
	final8 <- 1;
	inicio8 <- 0;
	
	//	La copa del arbol 
	
	Repetir
		
		SI init = Verdadero Entonces
			Repetir
				Escribir Sin Saltar " ";
				inicio2 <- inicio2 + 1;
			Hasta Que inicio2 > final2 + 1
			Escribir "*";
		FinSi
						
		inicio2 <- 0;
		
		Repetir
			Escribir Sin Saltar " ";
			inicio2 <- inicio2 + 1;
		Hasta Que inicio2 > final2
		Escribir Sin Saltar "*";
		
		inicio3 <- 0;
		
		Repetir
			Escribir Sin Saltar "*";
			inicio3 <- inicio3 + 1;
		Hasta Que inicio3 > final3
		final3 <- final3 + 1;
		
		inicio <- 0;
		Repetir
			Escribir Sin Saltar "*";
			inicio <- inicio + 1;
		Hasta Que inicio > final
		Escribir " ";
		final <- final + 1;
		
		colum <- colum + 1;
		final2 <- final2 - 1;
		init <- Falso;
	Hasta Que colum > 9
	
	//	medio tallo del arbol 
	
	Repetir
		inicio4 <- 0;
		Repetir
			Escribir Sin Saltar " ";
			inicio4 <- inicio4 + 1;
		Hasta Que inicio4 > final4
		
		inicio5 <- 0;
		Repetir
			Escribir Sin Saltar "*";
			inicio5 <- inicio5 + 1;
		Hasta Que inicio5 > final5
		
		Escribir " ";
		colum2 <- colum2 + 1;
	Hasta Que colum2 > 1
	
	
//	--	medio tallo del arbol -------------------
	
	Repetir
		
		inicio6 <- 0;
		
		Repetir
			Escribir Sin Saltar " ";
			inicio6 <- inicio6 + 1;
		Hasta Que inicio6 > final6
		Escribir Sin Saltar "*";
		inicio7 <- 0;
		
		Repetir
			Escribir Sin Saltar "*";
			inicio7 <- inicio7 + 1;
		Hasta Que inicio7 > final7
		final7 <- final7 + 1;
		
		inicio8 <- 0;
		Repetir
			Escribir Sin Saltar "*";
			inicio8 <- inicio8 + 1;
		Hasta Que inicio8 > final8
		final8 <- final8 + 1;
		
		colum3 <- colum3 + 1;
		final6 <- final6 - 1;
		init <- Falso;
		Escribir " ";
	Hasta Que colum3 > 1
	
	
	Escribir " ";
FinProceso

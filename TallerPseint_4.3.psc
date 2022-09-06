Proceso sin_titulo
	
	Definir inputFinal, number,contador, x, i Como Entero;
	inputFinal <- 1000;
	contador <- 0;
	
	
	Para i <- 2 Hasta inputFinal Con Paso 1 Hacer
		
		x <- i;
		number <- 1;
		contador <- 0;
	
		Mientras number <= i Hacer
			
			SI i MOD number = 0 Entonces
				contador <- contador + 1;
			FinSi
			
			number <- number + 1;
			
		FinMientras
		
		SI contador = 2 Entonces
			Escribir "Es numero primo :", i;
		FinSi
		
		
		
	FinPara
	
	
FinProceso

Proceso sin_titulo
	Definir cont, inicio, inicio2, final, final2 Como Entero;
	cont <- 0;
	inicio <- 0;
	final <- 10;
	final2 <- 1;
	
	Mientras inicio < 10 Hacer
		cont <- 0;
		Mientras cont < final Hacer
			Escribir Sin Saltar " ";
			cont <- cont + 1;
		FinMientras
		final <- final - 1;
		inicio <- inicio + 1;
	
		inicio2 <- 0;
		Mientras inicio2 < final2 Hacer
			Escribir Sin Saltar "*";
			inicio2 <- inicio2 + 1;
		FinMientras
		final2 <- final2 + 1;
		Escribir " ";
	FinMientras
	
FinProceso

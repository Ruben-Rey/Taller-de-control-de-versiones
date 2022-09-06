Proceso sin_titulo
	Definir indice, fila, colum Como Entero;
	
	Definir matriz Como Caracter;
	Dimension matriz[2,10];
	
	matriz[0,0] <- "01";
	matriz[0,1] <- "02";
	matriz[0,2] <- "03";
	matriz[0,3] <- "04";
	matriz[0,4] <- "05";
	matriz[0,5] <- "06";
	matriz[0,6] <- "07";
	matriz[0,7] <- "08";
	matriz[0,8] <- "09";
	matriz[0,9] <- "10";
	matriz[1,0] <- "11";
	matriz[1,1] <- "12";
	matriz[1,2] <- "13";
	matriz[1,3] <- "14";
	matriz[1,4] <- "15";
	matriz[1,5] <- "16";
	matriz[1,6] <- "17";
	matriz[1,7] <- "18";
	matriz[1,8] <- "19";
	matriz[1,9] <- "20";
	
	Para colum <- 0 Hasta 1 Con Paso 1 Hacer
		Para fila <- 0 Hasta 4 Con Paso 1 Hacer
			Escribir Sin Saltar " ", matriz[colum,fila];
		FinPara
		
		Escribir " ";
		
		Para fila <- 9 Hasta 5 Con Paso -1 Hacer
			Escribir Sin Saltar " ", matriz[colum,fila]; 
		FinPara
		
		Escribir " ";
	FinPara
	
	Escribir " ";	
FinProceso

Proceso sin_titulo
	Definir indice, fila, colum, resultado, opcion, inputColum, inputFila Como Entero;
	
	Definir matriz Como Caracter;
	Dimension matriz[10,10];
	
	
	Para fila <- 0 Hasta 9 Con Paso 1 Hacer
		Para colum <- 0 Hasta 9 Con Paso 1 Hacer
			
			SI fila = 9 Entonces
				Escribir Sin Saltar colum + 1 , "x", fila + 1 , "   ";
			SiNo
				Escribir Sin Saltar colum + 1 , "x", fila + 1 , "    ";
			FinSi
			resultado <- (colum + 1) * (fila + 1);
			matriz[fila,colum] <- ConvertirATexto(resultado);
		FinPara
		Escribir " ";
	FinPara
	
	Escribir " ";
	Escribir " ";
	
	Repetir
		
		Escribir "1. Obtener el resultado de la tabla de multiplicación";
		Escribir "2. Salir";
		Leer opcion;
		
		Limpiar Pantalla;
		Segun opcion Hacer
			1:
				
				Escribir "Inserte los numeros que esten en el rango del 0 al 9";
				Escribir "Ingrese la fila";
				Leer inputFila;
				Escribir "Ingrese la columna";
				Leer inputColum;
				
				SI inputColum < 0 o inputColum > 9 o inputFila < 0 o inputFila > 9 Entonces
					Escribir "Error, ingrese numeros del 0 al 9";
				SiNo
					fila <- inputFila;
					colum <- inputColum;
					Escribir "el resultado de ", colum + 1, "x", fila + 1, " = ", matriz[colum,fila];
				FinSi
				
				
		FinSegun
		
	Hasta Que opcion = 2;
			
FinProceso

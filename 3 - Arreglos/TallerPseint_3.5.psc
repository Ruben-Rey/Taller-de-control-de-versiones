SubProceso resultado_multiplicacion ( matriz, inputFila, inputColum )
	Escribir "el resultado de ", inputColum + 1, "x", inputFila + 1, " = ", matriz[inputColum,inputFila];
FinSubProceso

SubProceso generar_tabla ( matriz )
	
	Definir fila, colum, resultado Como Entero;
	
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
	
FinSubProceso

Proceso sin_titulo
	Definir opcion, inputFila, inputColum Como Entero;
	Definir matriz Como Caracter;
	Dimension matriz[10,10];
	
	generar_tabla( matriz );
	
	Repetir
		Escribir "1. Obtener el resultado de la tabla de multiplicación";
		Escribir "2. Salir";
		Leer opcion;
		
		Escribir "Inserte los numeros que esten en el rango del 0 al 9";
		Escribir "Ingrese la fila";
		Leer inputFila;
		Escribir "Ingrese la columna";
		Leer inputColum;
		
		SI inputColum < 0 o inputColum > 9 o inputFila < 0 o inputFila > 9 Entonces
			Escribir "Error, ingrese numeros del 0 al 9";
		SiNo
			resultado_multiplicacion( matriz, inputFila, inputColum );
			
		FinSi
		
		
		
	Hasta Que opcion = 2
	
	
	
	
	
FinProceso
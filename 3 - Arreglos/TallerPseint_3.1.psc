SubProceso crear_vector ( vector )
	
	Definir indice Como Entero;
	Definir inputNumero Como Caracter;
	
	Para indice <- 0 Hasta 4 Con Paso 1 Hacer
		Escribir "Ingrese el numero que desee en el indice: ", indice;
		Leer inputNumero;
		vector[indice] <- inputNumero;
	FinPara
	
FinSubProceso

Proceso sin_titulo
			
	Definir vector, inputNumero Como Caracter;
	Definir indice Como Entero;
	Dimension vector[5];
	
	crear_vector( vector );
		
	Para indice <- 0 Hasta 4 Con Paso 1 Hacer
		Escribir "[",indice,"]", " = ", vector[indice];
	FinPara
	
FinProceso
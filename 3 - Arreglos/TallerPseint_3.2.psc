SubProceso mostrar_impares ( vector )
	Definir indice, resultado Como Entero;
	Definir quitarComa Como Logico;
	
	quitarComa <- Verdadero;
	
	Escribir Sin Saltar "Los numeros impares son: ";
	
	indice <- 0;
	Repetir
		
		resultado <- vector[indice] MOD 2;
		
		SI resultado <> 0 Entonces
			SI quitarComa Entonces
				Escribir Sin Saltar vector[indice];
				quitarComa <- Falso;
			SiNo
				Escribir Sin Saltar ", ", vector[indice];
			FinSi			
		FinSi
		
		indice <- indice + 1;
		
	Hasta Que indice = 19 
	Escribir " ";
FinSubProceso

SubProceso mostrar_pares( vector )
	Definir indice, resultado Como Entero;
	Definir quitarComa Como Logico;
	
	quitarComa <- Verdadero;
	
	Escribir Sin Saltar "Los numeros pares son: ";
	
	indice <- 0;
	
	Repetir
		resultado <- vector[indice] MOD 2;
		SI resultado = 0 Entonces
			SI quitarComa Entonces
				Escribir Sin Saltar vector[indice];
				quitarComa <- Falso;
			SiNo
				Escribir Sin Saltar ",",vector[indice];
			FinSi
		FinSi
		indice <- indice + 1;
	Hasta Que indice = 19 
	
	Escribir " ";
FinSubProceso

SubProceso generar_arregloAleatorio ( vector )
	Definir indice, numeroAzar Como Entero;
	
	Para indice <- 0 Hasta 19 Con Paso 1 Hacer
		numeroAzar <- Aleatorio(1,100);
		vector[indice] <- numeroAzar;
	FinPara
	
FinSubProceso

Proceso sin_titulo
	Definir vector Como entero;
	Dimension vector[100];
	generar_arregloAleatorio( vector );
	
	mostrar_pares( vector );
	
	mostrar_impares( vector );
	
FinProceso

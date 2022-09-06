Proceso sin_titulo
	Definir indice, numeroAzar, resultado Como Entero;
	Definir estado Como Logico;
	Definir numero Como Caracter;
	Definir vector Como Caracter;
	Dimension vector[20];
	estado <- Verdadero;
	
	Para indice <- 0 Hasta 19 Con Paso 1 Hacer
		numeroAzar <- Aleatorio(1,100);
		vector[indice] <- ConvertirATexto(numeroAzar);
	FinPara
	
	indice <- 0;
	
	Escribir Sin Saltar "Los numeros pares son: ";
	Repetir
		
		numero <- vector[indice];
		resultado <- ConvertirANumero(numero) MOD 2;
		
		SI resultado = 0 Entonces
			SI estado Entonces
				Escribir Sin Saltar numero;
				estado <- Falso;
			SiNo
				Escribir Sin Saltar ", ", numero;
			FinSi
			
		FinSi
		indice <- indice + 1;
		
	Hasta Que indice = 19 
	
	estado <- Verdadero;
	indice <- 0;
	
	Escribir " ";
	Escribir Sin Saltar "Los numeros impares son ";
	Repetir
		
		numero <- vector[indice];
		resultado <- ConvertirANumero(numero) MOD 2;
		
		
		SI resultado <> 0 Entonces
			SI estado Entonces
				Escribir Sin Saltar numero;
				estado <- Falso;
			SiNo
				Escribir Sin Saltar ", ", numero;
			FinSi			
		FinSi
		
		indice <- indice + 1;
		
	Hasta Que indice = 19 
	Escribir " ";
FinProceso

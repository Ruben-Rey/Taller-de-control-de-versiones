SubProceso retiro_auto ( parqueadero, indice )
	parqueadero[indice,0] <- "";
	parqueadero[indice,1] <- "";
	parqueadero[indice,2] <- "";
	parqueadero[indice,3] <- "";
	parqueadero[indice,4] <- "";
FinSubProceso

SubProceso posicion <- buscar_auto ( parqueadero, cont )
	Definir inputPlaca Como Caracter;
	Definir posicion, indice Como Entero;
	posicion <- -1;
	
	Escribir "Ingrese la placa";
	Leer inputPlaca;
	
	Para indice <- 0 Hasta cont-1 Con Paso 1 Hacer
		SI inputPlaca = parqueadero[indice,0] Entonces
			posicion <- indice;
		FinSi
	FinPara
FinSubProceso

SubProceso ingreso_parqueadero ( parqueadero, cont )
	
	Definir nombreCompleto, marca, placa Como Caracter;
	Definir celular Como Entero;
	
	Escribir "Ingrese los datos del usuario";
	Escribir "Nombre completo";
	Leer nombreCompleto;
	Escribir "Numero de celular";
	Leer celular;
	Escribir "Marca del automovil";
	Leer marca;
	Escribir "Placa";
	Leer placa;
		
	parqueadero[cont,0] <- placa;
	parqueadero[cont,1] <- nombreCompleto;
	parqueadero[cont,2] <- ConvertirATexto(celular);
	parqueadero[cont,3] <- marca;
	parqueadero[cont,4] <- ConvertirATexto(cont);
	
FinSubProceso


Proceso sin_titulo
	
	Definir parqueadero Como Caracter;
	Definir cont, opcion, indice Como Entero;
	
	Dimension parqueadero[5,6];
	cont <- 0;
	
	Repetir
		Escribir "Parqueadero el guardian";
		Escribir "------------------------";
		Escribir "1. Ingreso al parqueadero";
		Escribir "2. Retirar del parqueadero";
		Escribir "3. Consulta de Vehículo en el parqueadero";
		Escribir "4. Salir de la app";
		Leer opcion;
		
		Limpiar Pantalla;
		
		Segun opcion Hacer
			1:
				SI cont < 5 Entonces
					ingreso_parqueadero( parqueadero, cont);
					cont <- cont + 1;
				SiNo
					Escribir "No hay espacio";
				FinSi
				
			2:
				indice <- buscar_auto( parqueadero, cont );
				SI indice > -1 Entonces
					Escribir "Auto retirado del estacionamiento slot :",parqueadero[indice,4]; 
					retiro_auto( parqueadero, indice );
				FinSi
			3:
				indice <- buscar_auto( parqueadero, cont );
				SI indice > -1  Entonces
					Escribir "Su auto con placa :" ,parqueadero[indice,0],  " se encuentra en el slot :", parqueadero[indice,4];
					 
				SiNo
					Escribir "Auto no encontrado";
				FinSi
		FinSegun
	Hasta Que opcion = 4 
FinProceso

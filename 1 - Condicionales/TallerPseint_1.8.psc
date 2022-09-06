SubProceso solicitud_datos ( nombreCompleto Por Referencia, identificacion Por Referencia, direccion Por Referencia  )
	Escribir "Ingrese sus datos";
	Escribir "Nombre completo";
	Leer nombreCompleto;
	Escribir "Identificación";
	Leer identificacion;
	Escribir "Dirección";
	Leer direccion;
FinSubProceso

SubProceso posicion <- buscar_tortas ( tortas, inputTorta )
	Definir posicion, indice Como Entero;
	posicion <- -1;
	
	Para indice <- 0 Hasta 3 Con Paso 1 Hacer
		
		SI inputTorta = tortas[indice] Entonces
			posicion <- indice;
		FinSi
	FinPara

FinSubProceso

SubProceso mostrar_tortas ( precios )
	Escribir "Elegir una de las siguientes tortas";
	Escribir " ";
	Escribir "-----------CHOCOLATE---------------";
	Escribir " ";
	Escribir "- Breakable";
	Escribir "---------------------";
	Escribir "Sabor: Chocolate";
	Escribir "Relleno: Manjar blanco y Fudge";
	Escribir "Decoracion: Floral";
	Escribir "Porciones: 20";
	Escribir "Precio : ", precios[1], " dolares";
	Escribir " ";
	
	Escribir "- Milenals";
	Escribir "---------------------";
	Escribir "Sabor: Chocolate";
	Escribir "Relleno: Ganache";
	Escribir "Decoracion: Geometrico";
	Escribir "Porciones: 12";
	Escribir "Precio : ", precios[2], " dolares";
	
	Escribir " ";
	Escribir "-----------VAINILLA---------------";
	Escribir " ";
	Escribir "- Amour";
	Escribir "---------------------";
	Escribir "Sabor: Vainilla";
	Escribir "Relleno: Fudge";
	Escribir "Decoracion: Floral";
	Escribir "Porciones: 12";
	Escribir "Precio : ", precios[3], " dolares";
	Escribir " ";
	
	Escribir "- Arcoiris";
	Escribir "---------------------";
	Escribir "Sabor: Vainilla";
	Escribir "Relleno: Manjar blanco";
	Escribir "Decoracion: Naked";
	Escribir "Porciones: 30";
	Escribir "Precio : ", precios[0], " dolares";
FinSubProceso

Proceso sin_titulo
	
	Definir inputTorta, tortas, nombreCompleto, identificacion, direccion, registro Como Caracter;
	Definir opcion, cantidades, inputCantidad, indice, cont, ganancia Como Entero;
	Definir precios, operacion Como Real;
	ganancia <- 0;
	cont <- 0;
	Dimension registro[20,20];
	Dimension precios[4];
	Dimension cantidades[4];
	Dimension tortas[4];
	
//	Registro[0,0] <- identificacion
//	Registro[0,1] <- nombreCompleto
//	Registro[0,2] <- torta
//	Registro[0,3] <- cantidad
	
	tortas[0] <- "Breakable";
	tortas[1] <- "Milenals";
	tortas[2] <- "Amour";
	tortas[3] <- "Arcoiris";
	
	cantidades[0] <- 10;
	cantidades[1] <- 10;
	cantidades[2] <- 10;
	cantidades[3] <- 10;
		
	precios[0] <- 20; // 
	precios[1] <- 40; // 
	precios[2] <- 60; // 
	precios[3] <- 50; // 

	Repetir
		Escribir "1. Programar pedido";
		Escribir "2. Tortas disponibles";
		Escribir "3. Venta diaria";
		Escribir "4. Salir";
		Leer opcion;
		
		Limpiar Pantalla;
		
		Segun opcion Hacer
			1:
				mostrar_tortas( precios );
				Escribir "Ingrese la torta que desea";
				Leer inputTorta;
				indice <- buscar_tortas( tortas, inputTorta );
				
				SI indice > -1 Entonces
					Escribir "Ingrese la cantidad";
					Leer inputCantidad;
					
					Limpiar Pantalla;
					
					SI inputCantidad <= cantidades[indice] Entonces
						
						cantidades[indice] <- cantidades[indice] - inputCantidad;
						solicitud_datos( nombreCompleto, identificacion, direccion );
						operacion <- inputCantidad * precios[indice];
						
						registro[cont,0] <- identificacion;
						registro[cont,1] <- nombreCompleto; 
						registro[cont,2] <- direccion; 
						registro[cont,3] <- tortas[indice];
						registro[cont,4] <- ConvertirATexto(inputCantidad);
						registro[cont,5] <- ConvertirATexto(operacion);
						
						Escribir "--------Detalle de la torta----------- ";
						Escribir registro[cont,4], " ", registro[cont,3], " - Precio : ", registro[cont,5] , " dolares" ;
						Escribir "Favor de realizar el pago en caja";
						cont <- cont + 1;
						ganancia <- ganancia + operacion;
						
						Escribir "---------------------------------------------------------------------------------------------------------------------";
						Escribir "---------------------------------------------------------------------------------------------------------------------";
						Escribir " ";
						
					SiNo
						Escribir "No tenemos en stock esa cantidad";
					FinSi
				SiNo
					Escribir "No tenemos esa torta";
				FinSi
				
			2:
				mostrar_tortas( precios );
				Escribir "Ingrese el nombre de la torta";
				Leer inputTorta;
				indice <- buscar_tortas( tortas, inputTorta );
				
				SI indice > -1 Entonces
					Escribir cantidades[indice], " uni, ", inputTorta, " , precio :", precios[indice], " dolares.";
				FinSi
				
				Escribir "---------------------------------------------------------------------------------------------------------------------";
				Escribir "---------------------------------------------------------------------------------------------------------------------";
				Escribir " ";
				
			3:
				Escribir " Venta del día :", ganancia, " dolares";
				Escribir "---------------------------------------------------------------------------------------------------------------------";
				Escribir "---------------------------------------------------------------------------------------------------------------------";
				Escribir " ";
		FinSegun
		
		
	Hasta Que opcion = 4; 
	
	
	
FinProceso

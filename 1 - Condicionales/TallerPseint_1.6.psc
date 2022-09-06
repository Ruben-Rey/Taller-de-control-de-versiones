// Funcion busca la placa de la moto en un arreglo bidimensional y retorna el indice(posicion)
SubProceso posicion <- buscar_moto ( placa, ingresoMoto, cont )
	Definir indice, posicion Como Entero;
	cont <- cont -1;
	Para indice <- 0 Hasta cont Con Paso 1 Hacer
		
		SI placa = ingresoMoto[indice,0] Entonces
			posicion <- indice; 
		FinSi
		
	FinPara

FinSubProceso

// Funcion guarda los datos personales de usuarios en un arreglo bidimensional
SubProceso solicitudDatos ( nombreCompleto Por Referencia, identificacion Por Referencia, direccion Por Referencia, modelMoto Por Referencia, placaMoto Por Referencia, fechaIngreso Por Referencia, probleMoto Por Referencia )
	Escribir "Nombre completo.";
	Leer nombreCompleto;
	Escribir "Identificación";
	Leer identificacion;
	Escribir "Direccion";
	Leer direccion;
	Escribir "Modelo de la motocicleta";
	Leer modelMoto;
	Escribir "Placa de la motocicleta";
	Leer placaMoto;
	Escribir "Fecha de ingreso";
	Leer fechaIngreso;
	Escribir "Ingrese algunos detalles del problema";
	Leer probleMoto;
FinSubProceso

	Proceso sin_titulo
		
		Definir nombreCompleto, direccion, modelMoto, placaMoto, inputPlaca, fechaIngreso, probleMoto, ingresoMoto, identificacion, diagnostico, repuesto, repuestos, inputRepuestos, cotizaRepuestos, salir, servicioRealizado Como Caracter;
		Definir opcion, opcion1, cont, cantidad, cantidades, inputCantidad, indice, indiceMoto, indice1, contador Como Entero;
		Definir precios, resultado, total Como Real;
		Dimension cantidades[9];
		Dimension repuestos[9];
		Dimension cotizaRepuestos[20,20];
		Dimension precios[9];
		Dimension ingresoMoto[20,20];
		cont <- 1;
		total <- 0;
		ingresoMoto[0,0] <- " ";

		repuestos[0] <- "Bujia";
		repuestos[1] <- "Pastillas de Freno";
		repuestos[2] <- "Bateria";
		repuestos[3] <- "Neumaticos";
		repuestos[4] <- "Filtros";
		repuestos[5] <- "Cadena";
		repuestos[6] <- "Revision";
		repuestos[7] <- "Mantenimiento";
		repuestos[8] <- "Reparacion";
		
		cantidades[0] <- 10; // Bujia
		cantidades[1] <- 10; // Pastillas de Freno
		cantidades[2] <- 10; // Bateria
		cantidades[3] <- 10; // Neumaticos
		cantidades[4] <- 10; // Filtros
		cantidades[5] <- 10; // Cadena
		cantidades[6] <- 100; // Revision
		cantidades[7] <- 100; // Mantenimiento
		cantidades[8] <- 100; // Reparacion
		
		precios[0] <- 20; // Bujia
		precios[1] <- 40; // Pastillas de Freno
		precios[2] <- 60; // Bateria
		precios[3] <- 50; // Neumaticos
		precios[4] <- 20; // Filtros
		precios[5] <- 30; // Cadena
		
		precios[6] <- 50; // Revision
		precios[7] <- 100; // Mantenimiento
		precios[8] <- 50; // Reparacion

		
	Repetir
		Escribir "Bienvenido al taller el Maquinista";
		Escribir " ";
		
		Escribir "Escoja una de las siguientes opciones";
		Escribir "1. Servicio de Revisión";
		Escribir "2. Recoger motocicleta";
		Escribir "3. Inventario de repuestos";
		Escribir "4. Salir de la app";
		Leer opcion;
		Limpiar Pantalla;
		
		Segun opcion Hacer
			1:
				Escribir "1. Revisión";
				Escribir "2. Ingreso del diagnostico";
				Leer opcion1;
				
				Segun opcion1 Hacer
					1:
						solicitudDatos( nombreCompleto, identificacion, direccion, modelMoto, placaMoto, fechaIngreso, probleMoto );
						Limpiar Pantalla;
						
						Escribir "La revisión puede demorar 1 hora";
						Escribir "---------------------------------------------------------------------------------------------------------------------";
						Escribir "---------------------------------------------------------------------------------------------------------------------";
						Escribir " ";
						
						ingresoMoto[cont,0] <- placaMoto; // PLACA
						ingresoMoto[cont,1] <- nombreCompleto; // NOMBRE COMPLETO
						ingresoMoto[cont,2] <- identificacion; // IDENTIFICACION
						ingresoMoto[cont,3] <- direccion; // DIRECCION
						ingresoMoto[cont,4] <- modelMoto; // MODELO MOTO
						ingresoMoto[cont,5] <- fechaIngreso; // FECHA INGRESO
						ingresoMoto[cont,6] <- probleMoto; // PROBLEMA
						
						cont <- cont + 1;
					2:
						indice <- 0;
						contador <- 0;
						resultado <- 0;
						total <- 0;
						Escribir "Ingrese la placa";
						Leer inputPlaca;
						
						indiceMoto <- buscar_moto( inputPlaca, ingresoMoto, cont );
						Escribir indiceMoto;
						SI indiceMoto > 0 Entonces
							
							Escribir "Placa de moto :", ingresoMoto[indiceMoto,0], " Pertenece a :", ingresoMoto[indiceMoto,1], " Ingreso en ", ingresoMoto[indiceMoto,5];
							Repetir
								
								Escribir "Ingrese los repuestos y el tipo de servicio que se necesita para la solución";
								Leer inputRepuestos;
								
								Para indice <- 0 Hasta 8 Con Paso 1 Hacer
									
									SI inputRepuestos = repuestos[indice] Entonces
										
										Escribir "Ingrese la cantidad";
										Leer inputCantidad;
										Escribir indice;
										
										SI inputCantidad <= cantidades[indice] Entonces
											resultado <- (inputCantidad) * precios[indice];
											cotizaRepuestos[contador,0] <- ConvertirATexto(inputCantidad); //cantidad
											cotizaRepuestos[contador,1] <- repuestos(indice);
											cotizaRepuestos[contador,2] <- ConvertirATexto(resultado);
											total <- total + resultado;
											contador <- contador + 1;
										FinSi
										
									FinSi
									
								FinPara
								
								Escribir "Presione x si desea salir o cualquier tecla para continuar";
								Leer salir;
							Hasta Que salir = "x"
							
						FinSi
						Limpiar Pantalla;
						
						Para indice <- 0 Hasta contador - 1 Con Paso 1 Hacer
							Escribir cotizaRepuestos[indice,0], " uni, ", cotizaRepuestos[indice,1], " , precio ", cotizaRepuestos[indice,2]; 
						FinPara
						
						Escribir "------------------------------------------------------------- Total :", total, " dolares";
						Escribir " ";
						Escribir "---------------------------------------------------------------------------------------------------------------------";
						Escribir "---------------------------------------------------------------------------------------------------------------------";
						Escribir " ";
						
						Escribir "1. Realizar la reparación";
						Escribir "2. Salir";
						Leer opcion;
						
						Segun opcion Hacer
							1:
								Para indice1 <- 0 Hasta contador - 1 Con Paso 1 Hacer
									repuesto <- cotizaRepuestos[indice1,1];
									
									Para indice <- 0 Hasta 8 Con Paso 1 Hacer
										SI repuesto = repuestos[indice] Entonces
											cantidad <- ConvertirANumero(cotizaRepuestos[indice1,0]);
											cantidades[indice] <- cantidades[indice] - cantidad;
										FinSi
									FinPara
									
								FinPara
								
								Escribir "Detallar el servicio realizado";
								Leer servicioRealizado;
								ingresoMoto[indiceMoto,7] <- servicioRealizado;
								ingresoMoto[indiceMoto,8] <- ConvertirATexto(total);
								
						FinSegun
				FinSegun
				
			2:
				Escribir "Ingrese la placa";
				Leer inputPlaca;
				indice <- buscar_moto( inputPlaca, ingresoMoto, cont );
				
				SI indice > - 1 Entonces
					Escribir "Placa de moto :", ingresoMoto[indice,0], " Pertenece a :", ingresoMoto[indice,1], " Ingreso en ", ingresoMoto[indice,5];
					Escribir ingresoMoto[indiceMoto,7], " Costo del servicio ", total, " dolares";
				FinSi
				
			3:
				Escribir "Bujia";
				Escribir "Pastillas de Freno";
				Escribir "Bateria";
				Escribir "Neumaticos";
				Escribir "Filtros";
				Escribir "Cadena";

				
				Escribir "Ingrese el repuesto que desea buscar";
				Leer inputRepuestos;
				
				Para indice <- 0 Hasta 5 Con Paso 1 Hacer
				
					SI inputRepuestos = repuestos[indice] Entonces
						Escribir cantidades[indice], " uni, de : ", repuestos[indice], " , precio x unidad : ", precios[indice], " dolares.";
					
					FinSi
				FinPara
				
				Escribir "---------------------------------------------------------------------------------------------------------------------";
				Escribir "---------------------------------------------------------------------------------------------------------------------";
				Escribir " ";
				
			De Otro Modo:
		FinSegun
		
	Hasta Que opcion = 4
FinProceso










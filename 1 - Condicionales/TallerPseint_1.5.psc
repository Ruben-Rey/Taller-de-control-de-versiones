// Funcion muestra los medicamentos
SubProceso mostrar_medicamentos ()
	Escribir "Medicamento por categoria";
	Escribir "------------------------";
	Escribir " Analgésicos ";
	Escribir "------------------------";
	Escribir "- Ibuprofeno";
	Escribir "- Paracetamol";
	Escribir "- Metamizol";
	Escribir " ";
	Escribir "------------------------";
	Escribir " Antialérgicos ";
	Escribir "------------------------";
	Escribir "- Cetirizina";
	Escribir "- Desloratadina";
	Escribir "- Fexofenadina";
FinSubProceso

// Funcion busca los medicamentos en un arreglo bidimensional y retorna el indice(posicion)
SubProceso posicion <- buscar_medicamento ( inputMedicamento, medicamentos )
	Definir posicion, indice Como Entero;
	
	Para indice <- 0 Hasta 5 Con Paso 1 Hacer
		SI inputMedicamento = medicamentos[indice, 0] Entonces
			posicion <- indice;
		FinSi
	FinPara
	
FinSubProceso

// Funcion guarda los datos personales de usuarios
SubProceso solicitudDatos ( nombreCompleto Por Referencia, identificacion Por Referencia, celular Por Referencia )
	
	Escribir "Nombre completo";
	Leer nombreCompleto;
	Escribir " ";
	Escribir "Identificación";
	Leer identificacion;
	Escribir "Numero de celular";
	Leer celular;
	
FinSubProceso

	Proceso sin_titulo
	
		Definir cantidad, medicamentos, carroCompras, salir, sugerencia, reclamo, nombreCompleto, identificacion, inputMedicamento Como Caracter;
		Definir cantidades, opcion, opcionRetiro, colum, indice,  descontar, celular, cont, contadorProducto Como Entero;
		Definir estadoFactura Como Logico;
		Definir precios, cantidadNumber, operacion, total Como Real;
		cont <- 0;
		total <- 0;
		
		Dimension medicamentos[7,7];
		Dimension cantidades[7];
		Dimension precios[7];
		Dimension carroCompras[9,9];
		
		
		medicamentos[0,0] <- " ";
		
		medicamentos[1,0] <- "Ibuprofeno";
		medicamentos[1,1] <- "El ibuprofeno es un antiinflamatorio no esteroideo, utilizado frecuentemente como antipirético, analgésico y antiinflamatorio.";
		medicamentos[1,2] <- "Fórmula: C13H18O2";
		medicamentos[1,3] <- "Masa molar: 206,29 g/mol";
		medicamentos[1,4] <- "Punto de ebullición: 157 °C";
		medicamentos[1,5] <- "Vida media: 1.8 a 2 horas";
		medicamentos[1,6] <- "Metabolismo: Hepático (CYP2C9)";
		
		medicamentos[2,0] <- "Paracetamol";
		medicamentos[2,1] <- "El paracetamol, es un fármaco con propiedades analgésicas y antipiréticas utilizado principalmente para tratar la fiebre y el dolor leve y moderado.";
		medicamentos[2,2] <- "Fórmula: C8H9NO2";
		medicamentos[2,3] <- "Masa molar: 151,163 g/mol";
		medicamentos[2,4] <- "Densidad: 1,26 g/cm³";
		medicamentos[2,5] <- "Vida media: 1-4 h";
		medicamentos[2,6] <- "Metabolismo: 90-95 % Hepático";
		
		medicamentos[3,0] <- "Metamizol";
		medicamentos[3,1] <- "El metamizol, es utilizado en muchos países como un potente analgésico, antipirético y espasmolítico.";
		medicamentos[3,2] <- "Fórmula: C13H16N3NaO4S";
		medicamentos[3,3] <- "Masa molar: 333,341 g/mol";
		medicamentos[3,4] <- "Biodisponibilidad: 100%";
		medicamentos[3,5] <- "Vida media: 4 horas";
		medicamentos[3,6] <- "Metabolismo: AM404, P Cytochrome P 450, glutation";
		
		medicamentos[4,0] <- "Cetirizina";
		medicamentos[4,1] <- "La cetirizina es un fármaco utilizado para el tratamiento de la alergia. Es un antihistamínico considerado de segunda generación por no provocar somnolencia.";
		medicamentos[4,2] <- "Fórmula: C21H25N2ClO3";
		medicamentos[4,3] <- "Masa molar: 388,89 g/mol";
		medicamentos[4,4] <- "Nombre comercial: Alercet, Reactine, Zyrtec";
		medicamentos[4,5] <- "Vida media: 8.3 horas";
		medicamentos[4,6] <- "";
		
		medicamentos[5,0] <- "Desloratadina";
		medicamentos[5,1] <- "La desloratadina es un fármaco antihistamínico utilizado para tratar alergias. La desloratadina actúa como agonista inverso de los receptores H1 de la histamina porque la sustancia no penetra en el sistema nervioso central.";
		medicamentos[5,2] <- "Fórmula: C19H19ClN2";
		medicamentos[5,3] <- "Masa molar: 310,82 g/mol";
		medicamentos[5,4] <- "";
		medicamentos[5,5] <- "Vida media: 27 h";
		medicamentos[5,6] <- "Metabolismo: Hepático";
		
		medicamentos[6,0] <- "Fexofenadina";
		medicamentos[6,1] <- "La fexofenadina, es un fármaco antihistamínico utilizado en el tratamiento de los síntomas de alergia, como la fiebre del heno y la urticaria.";
		medicamentos[6,2] <- "Fórmula: C32H39NO4";
		medicamentos[6,3] <- "Masa molar: 501,68 g/mol";
		medicamentos[6,4] <- "";
		medicamentos[6,5] <- "Vida media: 14.4 horas";
		medicamentos[6,6] <- "Metabolismo: AM404, P Cytochrome P 450, glutation";
		
		cantidades[0] <- 0;
		cantidades[1] <- 10;
		cantidades[2] <- 10;
		cantidades[3] <- 10;
		cantidades[4] <- 10;
		cantidades[5] <- 10;
		cantidades[6] <- 10;
		
		precios[0] <- 1;
		precios[1] <- 2;
		precios[2] <- 3;
		precios[3] <- 4;
		precios[4] <- 5;
		precios[5] <- 6;
		precios[6] <- 3;

	Repetir
		
		Escribir "Bienvenido a la drogeria mi salud";
		Escribir " ";
		
		Escribir "Escoja una de las siguientes opciones";
		Escribir "1. Compra de medicamentos";
		Escribir "2. Consulta de precios";
		Escribir "3. Devolución";
		Escribir "4. Salir de la app";
		Leer opcion;
		
		Limpiar Pantalla;
		
		Segun opcion Hacer
			
			1:
				contadorProducto <- - 1;
				
				Repetir
					
					mostrar_medicamentos();
					
					Escribir "Ingresa el nombre del medicamento";
					Leer inputMedicamento;
					
					indice <- buscar_medicamento(inputMedicamento, medicamentos);
					
					SI indice > 0 Entonces
								
						Escribir "Ingrese la cantidad";
						Leer cantidad;
						Limpiar Pantalla;
																
						descontar <- cantidades[indice];
						cantidadNumber <- ConvertirANumero(cantidad);
						descontar <- descontar - cantidadNumber;
								
						SI descontar < 0 Entonces
							Escribir "No hay unidades disponible";
						SiNo
							Escribir "Se agrego al carrito de compras el medicamento : ", medicamentos[indice,0]; 
							carroCompras[cont,0] <- medicamentos[indice,0];
							carroCompras[cont,1] <- cantidad;
									
							operacion <- precios[indice] * cantidadNumber;
							carroCompras[cont,2] <- ConvertirATexto(operacion);
									
							total <- total + operacion;
									
							cantidades[indice] <- descontar; 
							contadorProducto <- contadorProducto + 1; //Mostrar producto
							cont <- cont + 1; //aumentar slot de carrito de compras
										
						FinSi
					FinSi					
					
					Escribir "Para salir presione la tecla x o cualquier tecla para seguir comprando";
					Leer salir;
					
				Hasta Que salir = "x";
				
				SI cont > 0 Entonces
					
					Escribir "Ingrese los datos para generar la factura";
					solicitudDatos( nombreCompleto, identificacion, celular );
					
					Escribir "Acercarse a caja a recoger el producto";
					Para colum <- 0 Hasta contadorProducto Con Paso 1 Hacer
						
						Escribir carroCompras[colum,1], " uni de ", carroCompras[colum,0], " cuesta : ", carroCompras[colum,2] , " dolares.";
						
					FinPara
					
					Escribir "Total a pagar :", total, " dolares.";
					
					nombreCompleto <- " ";
					identificacion <- " ";
					celular <- 0;
					cont <- 0;
					descontar <- 0;
					contadorProducto <- - 1;
					total <- 0;
					
				SiNo
					Escribir "Producto no encontrado";
					
				FinSi
			2:
				Repetir
					
					mostrar_medicamentos();
					Escribir " ";
					
					Escribir "Ingresa el nombre del medicamento";
					Leer inputMedicamento;
					
					indice <- buscar_medicamento(inputMedicamento, medicamentos);
					Limpiar Pantalla;
					
					SI indice > 0 Entonces
						Escribir cantidades[indice], " pz en Stock del medicamento : ",medicamentos[indice,0], " - Precio x unidad : ", precios[indice], " dolares."; 
					FinSi
										
					Escribir "Para salir presione la tecla x o cualquier tecla para seguir buscando";
					Leer salir;
					
				Hasta Que salir = "x";
				
			3:
				Escribir "Alguna sugerencia o reclamo sobre el producto";
				Escribir " ";
				Escribir "1. Sugerencia";
				Escribir "2. Reclamo";
				Escribir "3. Salir";
				Leer opcionRetiro;
				Limpiar Pantalla;
				
				Segun opcionRetiro Hacer
					1:	
						Escribir "Ingrese la sugerencia";
						Leer sugerencia;
						Escribir "Gracias por su sugerencia, seguiremos trabajando por mejorar para ustedes.";
						
					2:	
						solicitudDatos( nombreCompleto, identificacion, celular );
						Escribir "Ingrese el reclamo";
						Leer reclamo;
						
						Escribir "Hola, ", nombreCompleto,  " disculpe las molestias, nos comunicaremos y resolveremos su caso lo mas pronto posible.";
						Escribir " ";
						Escribir " ";
						Escribir " ";
						Escribir " ";
						Escribir " ";
						Escribir " ";
						
					3:
						Escribir "Gracias por confiar en nosotros.";
					De Otro Modo:
						Escribir "La opción elegida no existe";
				FinSegun
				
			De Otro Modo:
				Escribir "La opción elegida no existe";	
		FinSegun
	
	Hasta Que opcion = 4 
		
FinProceso






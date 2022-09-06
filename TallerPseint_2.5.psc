Proceso drogeria_miSalud
	
	Definir nombreCompleto Como Caracter;
	Definir identificacion, celular Como Entero;
	Definir medicamento Como Caracter;
	Definir mensajeDevolucion Como Caracter;
	
	Definir opcion, opcionTipos, opcionMedicamento, cantidad Como Entero;
	Definir cantIbu, cantPara, cantMeta, cantCeti, cantDes, cantFexo Como Entero;
	Definir stock, estado Como Logico;
	stock <- Verdadero;
	estado <- Verdadero;
	Definir precio, precioIbu, precioPara, precioMeta, medicamentoPrecio Como Real;
	precioIbu <- 0.25;
	precioPara <- 0.15;
	precioMeta <- 0.35;
	
	Definir precioCeti, precioDes, precioFexo Como Real;
	precioCeti <- 0.25;
	precioDes <- 0.15;
	precioFexo <- 0.35;
	
	cantIbu <- 0;
	cantPara <- 40;
	cantMeta <- 40;
	cantCeti <- 40;
	cantDes <- 40;
	cantFexo <- 40;
		
	Escribir "Bienvenido a la drogeria mi salud";
	Escribir " ";
		
	Escribir "Escoja una de las siguientes opciones";
	Escribir "1. Compra de productos";
	Escribir "2. Consulta de precios por producto";
	Escribir "3. Devolución";
	Leer opcion;
	
	Limpiar Pantalla;
	
	Segun opcion Hacer
		1:
			Escribir "";
			Escribir "Tipos de medicamentos";
			Escribir " ";
			Escribir "1. Analgésicos";
			Escribir "2. Antialérgicos";
			Leer opcionTipos;
			Limpiar Pantalla;
			
			Segun opcionTipos Hacer
				1: 
					Escribir "Se detalla los siguientes Analgésicos :";
					Escribir " ";
					
					Escribir "1. Ibuprofeno";
					Escribir " ";
					Escribir "El ibuprofeno es un antiinflamatorio no esteroideo, utilizado frecuentemente como antipirético, analgésico y antiinflamatorio";
					Escribir "Fórmula: C13H18O2";
					Escribir "Masa molar: 206,29 g/mol";
					Escribir "Punto de ebullición: 157 °C";
					Escribir "Nombre comercial: Brufen, genéricos";
					Escribir "Vida media: 1.8 a 2 horas";
					Escribir "Metabolismo: Hepático (CYP2C9)";
					Escribir " ";
					
					Escribir "2. Paracetamol";
					Escribir " ";
					Escribir "El paracetamol, es un fármaco con propiedades analgésicas y antipiréticas utilizado principalmente para tratar la fiebre y el dolor leve y moderado.";
					Escribir "Fórmula: C8H9NO2";
					Escribir "Masa molar: 151,163 g/mol";
					Escribir "Densidad: 1,26 g/cm³";
					Escribir "Vida media: 1-4 h";
					Escribir "Metabolismo: 90-95 % Hepático";
					Escribir " ";
					
					Escribir "3. Metamizol";
					Escribir " ";
					Escribir "El metamizol, es utilizado en muchos países como un potente analgésico, antipirético y espasmolítico";
					Escribir "Fórmula: C13H16N3NaO4S";
					Escribir "Masa molar: 333,341 g/mol";
					Escribir "Metabolismo: AM404, P Cytochrome P 450, glutation";
					Escribir "Vida media: 4 horas";
					Escribir "Biodisponibilidad: 100%";
					Escribir " ";
					
					Escribir "Si desea algun medicamento escoja una de las opciones";
					Leer opcionMedicamento;
					
					SI opcionMedicamento > 3 o opcionMedicamento < 0 Entonces
						Escribir "La opción elegida no existe.";
						estado <- Falso;
					SiNo
						
						Limpiar Pantalla;
					
						Segun opcionMedicamento Hacer
							1:
								medicamento <- "Ibuprofeno";
								medicamentoPrecio <- precioIbu;
							2:
								medicamento <- "Paracetamol";
								medicamentoPrecio <- precioPara;
							3:
								medicamento <- "Metamizol";
								medicamentoPrecio <- precioMeta;			
								
							De Otro Modo:
								Escribir "La opción elegida no existe.";
								estado <- Falso;
						FinSegun
					FinSi
					
				2: 
					Escribir "Se detalla los siguientes Antialérgicos :";
					Escribir " ";
					
					Escribir "1. Cetirizina";
					Escribir " ";
					Escribir "La cetirizina es un fármaco utilizado para el tratamiento de la alergia. Es un antihistamínico considerado de segunda generación por no provocar somnolencia.";
					Escribir "Fórmula: C21H25N2ClO3";
					Escribir "Masa molar: 388,89 g/mol";
					Escribir "Nombre comercial: Alercet, Reactine, Zyrtec";
					Escribir "Vida media: 8.3 horas";
					Escribir " ";
					
					Escribir "2. Desloratadina";
					Escribir " ";
					Escribir "La desloratadina es un fármaco antihistamínico utilizado para tratar alergias. La desloratadina actúa como agonista inverso de los receptores H1 de la histamina porque la sustancia no penetra en el sistema nervioso central.";
					Escribir "Fórmula: C19H19ClN2";
					Escribir "Masa molar: 310,82 g/mol";
					Escribir "Vida media: 27 h";
					Escribir "Metabolismo: Hepático";
					Escribir " ";
					
					Escribir "3. Fexofenadina";
					Escribir " ";
					Escribir "La fexofenadina, es un fármaco antihistamínico utilizado en el tratamiento de los síntomas de alergia, como la fiebre del heno y la urticaria.";
					Escribir "Fórmula: C32H39NO4";
					Escribir "Masa molar: 501,68 g/mol";
					Escribir "Metabolismo: AM404, P Cytochrome P 450, glutation";
					Escribir "Vida media: 14.4 horas";
					Escribir " ";
					
					Escribir "Si desea algun medicamento escoja una de las opciones";
					Leer opcionMedicamento;
					
					SI opcionMedicamento > 3 o opcionMedicamento < 0 Entonces
						Escribir "La opción elegida no existe.";
						estado <- Falso;
					SiNo
											
						Limpiar Pantalla;
					
						Segun opcionMedicamento Hacer
							1:
								medicamento <- "Cetirizina";
								medicamentoPrecio <- precioCeti;
							2:
								medicamento <- "Desloratadina";
								medicamentoPrecio <- precioDes;
							3:
								medicamento <- "Fexofenadina";
								medicamentoPrecio <- precioFexo;			
								
							De Otro Modo:
								Escribir "La opción elegida no existe.";
								estado <- Falso;
						FinSegun
					FinSi
				
				De Otro Modo:
					Escribir "La opción elegida no existe.";
					estado <- Falso;
			FinSegun
						
			SI estado Entonces
				Escribir "Ingrese la cantidad que desea";
				Leer cantidad;
				
				SI medicamento = "Ibuprofeno" Entonces
					SI cantIbu >= cantidad y cantIbu > 0 Entonces
						cantIbu <- cantIbu - cantidad;
					SiNo
						Escribir "No tenenmos en stock esa cantidad";
						stock <- Falso;
					FinSi
					
				SiNo
					SI medicamento = "Paracetamol" Entonces
						SI cantPara >= cantidad y cantPara > 0 Entonces
							cantPara <- cantPara - cantidad;
						SiNo
							Escribir "No tenemos en stock esa cantidad";
							stock <- Falso;
						FinSi
						
					SiNo
						SI medicamento = "Metamizol" Entonces
							SI cantMeta >= cantidad y cantMeta > 0 Entonces
								cantMeta <- cantMeta - cantidad;
							SiNo
								Escribir "No tenemos en stock esa cantidad";
								stock <- Falso;
							FinSi
							
						SiNo
							SI medicamento = "Cetirizina" Entonces
								SI cantCeti >= cantidad y cantCeti > 0 Entonces
									cantCeti <- cantCeti - cantidad;
								SiNo
									Escribir "No tenemos en stock esa cantidad";
									stock <- Falso;
								FinSi
								
							SiNo
								SI medicamento = "Desloratadina" Entonces
									SI cantDes >= cantidad y cantDes > 0 Entonces
										cantDes <- cantDes - cantidad;
									SiNo
										Escribir "No tenemos en stock esa cantidad";
										stock <- Falso;
									FinSi
								SiNo
									SI medicamento = "Fexofenadina" Entonces
										SI cantFexo >= cantidad y cantFexo > 0 Entonces
											cantFexo <- cantFexo - cantidad;
										SiNo
											Escribir "No tenemos en stock esa cantidad";
											stock <- Falso;
										FinSi
										
									FinSi		
								FinSi	
							FinSi
						FinSi
					FinSi
				FinSi
				
				SI stock Entonces
					Escribir "Ingrese su nombre completo";
					Leer nombreCompleto;
					Escribir "Ingrese su identificación";
					Leer identificacion;
					
					precio <- medicamentoPrecio * cantidad;
					Escribir "Fecha: 21/08/2022, Hora: 06:45, Cliente : ", nombreCompleto;
					Escribir medicamento, " ", cantidad, " uni el total del producto es : $", precio;
					Escribir "Gracias por su compra";
				FinSi	

			FinSi
		
		2:
			Escribir "Se lista los precios de los productos por categoria, escoja una opción";
			Escribir "1. Analgésicos";
			Escribir "2. Antialérgicos";
			Leer opcionTipos;
			
			Segun opcionTipos Hacer
				1:
					Escribir cantIbu, " pz - Ibuprofeno, precio :$", precioIbu;
					Escribir cantPara, " pz - Paracetamol, precio :$", precioPara;
					Escribir cantMeta ," pz - Metamizol, precio :$", precioMeta;
				2:
					Escribir cantCeti, " pz - Cetirizina, precio :$", precioCeti;
					Escribir cantDes,  " pz - Desloratadina, precio :$", precioDes;
					Escribir cantFexo, " pz - Fexofenadina, precio :$", precioFexo;
					
				De Otro Modo:
					Escribir "La opción elegida no existe.";	
				
			FinSegun
			
		3:
			Escribir "Ingrese su nombre completo";
			Leer nombreCompleto;
			Escribir "Ingrese su nombre identificacion";
			Leer identificacion;
			Escribir "Ingrese su numero de celular";
			Leer celular;
			Limpiar Pantalla;
			
			Escribir "Hola, ", nombreCompleto, " Disculpe las molestia, favor de ingresar el motivo de la devolución del producto.";
			Leer mensajeDevolucion;
			Escribir "En breve un asistente se acercara y le podra ayudar, gracias.";
		De Otro Modo:
			Escribir "La opción elegida no existe.";
	FinSegun
	
	
FinProceso

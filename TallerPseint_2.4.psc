Proceso videoTienda
	
	Definir nombreCompleto Como Caracter;
	Definir identificacion, celular Como Entero;
	Definir direccion Como Caracter;
	
	Definir opcion, opcion2, opcionGenero, opcionPelicula, opcionRetiro Como Entero;
	Definir peliAccion_1, peliAccion_2, peliAccion_3, peliAccion_4 Como Entero;
	Definir peliTerror_1, peliTerror_2, peliTerror_3, peliTerror_4 Como Entero;
	Definir peliDrama_1, peliDrama_2, peliDrama_3, peliDrama_4 Como Entero;
	Definir pelicula, sugerencia, reclamo Como Caracter;
	Definir estado, stock Como Logico;
	estado <- Verdadero;
	stock <- Verdadero;
	
	Escribir "Bienvenido a la Video Tienda";
	Escribir " ";
		
	Escribir "Elegir una opción";
	Escribir "1. Alquilar películas";
	Escribir "2. Consultar películas disponibles";
	Escribir "3. Recibir películas";

	peliAccion_1 <- 1;   //	Sniper: Rogue Mission
	peliAccion_2 <- 0;	 // Cazando a Ava Bravo
	peliAccion_3 <- 15;	 // Codigo Emperador
	peliAccion_4 <- 10;   // Turno de día
	
	peliTerror_1 <- 30;   //	They/Them
	peliTerror_2 <- 10;	 // X
	peliTerror_3 <- 10;	 // The Power
	peliTerror_4 <- 2;   // Hasta que mueras
	
	peliDrama_1 <- 3;   //	365 Días más
	peliDrama_2 <- 0;	 // Alcarrás
	peliDrama_3 <- 10;	 // Blood Brothers
	peliDrama_4 <-  7;   // Royalteen: Arvingen

	
	Leer opcion;
	Limpiar Pantalla;
	Segun opcion Hacer
		1:
			Escribir "Escoja el género";
			Escribir "1. Acción";
			Escribir "2. Terror";
			Escribir "3. Drama";
			Leer opcionGenero;
			Limpiar Pantalla;
			
			Segun opcionGenero Hacer
				1:
					Escribir "Escoja la pelicula";
					Escribir "1. Sniper: Rogue Mission";
					pelicula <- "Sniper: Rogue Mission";
					Escribir "2. Cazando a Ava Bravo";
					pelicula <- "Cazando a Ava Bravo";
					Escribir "3. Codigo Emperador";
					pelicula <- "Codigo Emperador";
					Escribir "4. Turno de día";
					pelicula <- "Turno de día";
					Leer opcionPelicula;
					
					Limpiar Pantalla;
					Segun opcionPelicula Hacer
						1:	
							SI peliAccion_1 > 0 Entonces
								peliAccion_1 <- peliAccion_1 - 1;
								Escribir "Detalles del producto: ";
								Escribir " ";
								Escribir "Sniper: Rogue Mission";
								Escribir "Género: Acción, Misterio, Suspense";
								Escribir "Año: 2022";
								Escribir "Duración: 96";
								Escribir "Países: United States of America";
								Escribir "Director: Oliver Thompson";
								
							SiNo
								Escribir "No hay unidades en stock";
								stock <- Falso;
							FinSi
							
						2:
							SI peliAccion_2 > 0 Entonces
								peliAccion_2 <- peliAccion_2 - 1;
								Escribir "Detalles del producto: ";
								Escribir " ";
								Escribir "Cazando a Ava Bravo";
								Escribir "Género: Acción, Suspense, Terror";
								Escribir "Año: 2022";
								Escribir "Duración: 90";
								Escribir "Países: United States of America";
								Escribir "Director: Gary Auerbach";
								
							SiNo
								Escribir "No hay unidades en stock";
								stock <- Falso;
							FinSi
														
						3:
							SI peliAccion_3 > 0 Entonces
								peliAccion_3 <- peliAccion_3 - 1;
								Escribir "Detalles del producto: ";
								Escribir " ";
								Escribir "Codigo Emperador";
								Escribir "Género: Acción, Crimen, Suspense";
								Escribir "Año: 2022";
								Escribir "Duración: 106";
								Escribir "Países: Spain";
								Escribir "Director: Jorge Coira";
								
							SiNo
								Escribir "No hay unidades en stock";
								stock <- Falso;
							FinSi
							
						4:
							SI peliAccion_4 > 0 Entonces
								peliAccion_4 <- peliAccion_4 - 1;
								Escribir "Detalles del producto: ";
								Escribir " ";
								Escribir "Turno de día";
								Escribir "Género: Acción, Fantasía, Terror";
								Escribir "Año: 2022";
								Escribir "Duración: 113";
								Escribir "Países: United States of America";
								Escribir "Director: J.J. Perry";
								
							SiNo
								Escribir "No hay unidades en stock";
								stock <- Falso;
							FinSi
														
						De Otro Modo:
							Escribir "La opción elegida no existe";
							estado <- Falso;
					FinSegun
				
				2:
					Escribir "Escoja la pelicula";
					Escribir "1. They/Them";
					pelicula <- "They/Them";
					Escribir "2. X";
					pelicula <- "X";
					Escribir "3. The Power";
					pelicula <- "The Power";
					Escribir "4. Hasta que mueras";
					pelicula <- "Hasta que mueras";
					Leer opcionPelicula;
					Limpiar Pantalla;		
					Segun opcionPelicula Hacer
						1:	
							SI peliTerror_1 > 0 Entonces
								peliTerror_1 <- peliTerror_1 - 1;
								Escribir "Detalles del producto: ";
								Escribir " ";
								Escribir "They/Them";
								Escribir "Género: Terror, Suspense";
								Escribir "Año: 2022";
								Escribir "Duración: 90";
								Escribir "Países: United States of America";
								Escribir "Director: John Logan";
								
							SiNo
								Escribir "No hay unidades en stock";
								stock <- Falso;
							FinSi
							
						2:
							SI peliTerror_2 > 0 Entonces
								peliTerror_2 <- peliTerror_2 - 1;
								Escribir "Detalles del producto: ";
								Escribir " ";
								Escribir "X";
								Escribir "Género: Misterio, Suspense, Terror";
								Escribir "Año: 2022";
								Escribir "Duración: 106";
								Escribir "Países: United States of America";
								Escribir "Director: Ti West";
								
							SiNo
								Escribir "No hay unidades en stock";
								stock <- Falso;
							FinSi
							
						3:
							SI peliTerror_3 > 0 Entonces
								peliTerror_3 <- peliTerror_3 - 1;
								Escribir "Detalles del producto: ";
								Escribir " ";
								Escribir "The Power";
								Escribir "Género: Terror";
								Escribir "Año: 2021";
								Escribir "Duración: 92";
								Escribir "Países: United Kingdom";
								Escribir "Director: Corinna Faith";
								
							SiNo
								Escribir "No hay unidades en stock";
								stock <- Falso;
							FinSi
							
						4:
							SI peliTerror_4 > 0 Entonces
								peliTerror_4 <- peliTerror_4 - 1;
								Escribir "Detalles del producto: ";
								Escribir " ";
								Escribir "Hasta que mueras";
								Escribir "Género: Suspense, Terror";
								Escribir "Año: 2021";
								Escribir "Duración: 88";
								Escribir "Países: United States of America";
								Escribir "Director: SK Dale";

							SiNo
								Escribir "No hay unidades en stock";
								stock <- Falso;
							FinSi
														
						De Otro Modo:
							Escribir "La opción elegida no existe";
							estado <- Falso;
					FinSegun
					
				3:
					Escribir "Escoja la pelicula";
					Escribir "1. 365 Días más";
					pelicula <- "365 Días más";
					Escribir "2. Alcarrás";
					pelicula <- "Alcarrás";
					Escribir "3. Blood Brothers";
					pelicula <- "Blood Brothers";
					Escribir "4. Royalteen: Arvingen";
					pelicula <- "Royalteen: Arvingen";
					Leer opcionPelicula;
					Limpiar Pantalla;
					Segun opcionPelicula Hacer
						1:	
							SI peliDrama_1 > 0 Entonces
								peliDrama_1 <- peliDrama_1 - 1;
								Escribir "Detalles del producto: ";
								Escribir " ";
								Escribir "365 Días más";
								Escribir "Género: Drama, Romance";
								Escribir "Año: 2022";
								Escribir "Duración: 112";
								Escribir "Países: Poland";
								Escribir "Director: Barbara Bialowas";
								
							SiNo
								Escribir "No hay unidades en stock";
								stock <- Falso;
							FinSi
							
						2:
							SI peliDrama_2 > 0 Entonces
								peliDrama_2 <- peliDrama_2 - 1;
								Escribir "Detalles del producto: ";
								Escribir " ";
								Escribir "Alcarrás";
								Escribir "Género: Drama";
								Escribir "Año: 2022";
								Escribir "Duración: 115";
								Escribir "Países: Spain";
								Escribir "Director: Carla Simón";
								
							SiNo
								Escribir "No hay unidades en stock";
								stock <- Falso;
							FinSi

						3:
							SI peliDrama_3 > 0 Entonces
								peliDrama_3 <- peliDrama_3 - 1;
								Escribir "Detalles del producto: ";
								Escribir " ";
								Escribir "Blood Brothers";
								Escribir "Género: Drama";
								Escribir "Año: 2021";
								Escribir "Duración: 111";
								Escribir "Países: United Kingdom";
								Escribir "Director: Jay Craven";
								
							SiNo
								Escribir "No hay unidades en stock";
								stock <- Falso;
							FinSi
							
						4:
							SI peliDrama_4 > 0 Entonces
								peliDrama_4 <- peliDrama_4 - 1;
								Escribir "Detalles del producto: ";
								Escribir " ";
								Escribir "Royalteen: Arvingen";
								Escribir "Género: Drama, Romance";
								Escribir "Año: 2022";
								Escribir "Duración: 108";
								Escribir "Países: United States of America";
								Escribir "Director: Per-Olav Sorensen";
								
							SiNo
								Escribir "No hay unidades en stock";
								stock <- Falso;
							FinSi
		
						De Otro Modo:
							Escribir "La opción elegida no existe";
							estado <- Falso;
					FinSegun
					
				De Otro Modo:
					Escribir "La opción elegida no existe";	
					estado <- Falso;
			FinSegun
			
			SI estado Entonces
				SI stock Entonces
					Escribir "Favor de ingresar sus datos";
					Escribir "Ingrese su nombre completo";
					Leer nombreCompleto;
					Escribir " ";
					Escribir "Ingrese su identificación";
					Leer identificacion;
					Escribir "Ingrese su dirección actual";
					Leer direccion;
					
					Escribir " ";
					Escribir "Hola ", nombreCompleto, " acerquese al área de almacén donde se hara la entrega de la pelicula :", pelicula, ". Gracias por confiar en nosostros";
				FinSi
				
			FinSi
			
			
			
		2:
			Escribir "Peliculas disponibles por género";
			Escribir " ";
			Escribir "------Acción------";
			
			SI peliAccion_1 > 0 Entonces
				Escribir peliAccion_1, " uni. Sniper: Rogue Mission";
			FinSi
			
			SI peliAccion_2 > 0 Entonces
				Escribir peliAccion_2, " uni. Cazando a Ava Bravo";
			FinSi
			
			SI peliAccion_3 > 0 Entonces
				Escribir peliAccion_3, " uni. Codigo Emperador";
			FinSi
			
			SI peliAccion_4 > 0 Entonces
				Escribir peliAccion_4, " uni. Turno de día";
			FinSi
						
			Escribir " ";
			Escribir "-----Terror-------";
			
			SI peliTerror_1 > 0 Entonces
				Escribir peliTerror_1, " uni. They/Them";
			FinSi
			
			SI peliTerror_2 > 0 Entonces
				Escribir peliTerror_2, " uni. X";
			FinSi
			
			SI peliTerror_3 > 0 Entonces
				Escribir peliTerror_3, " uni. The Power";
			FinSi
			
			SI peliTerror_4 > 0 Entonces
				Escribir peliTerror_4, " uni. Hasta que mueras";
			FinSi
			
			Escribir " ";
			Escribir "------Drama--------";
			
			SI peliDrama_1 > 0 Entonces
				Escribir peliDrama_1, " uni. 365 Días más";
			FinSi
			
			SI peliDrama_2 > 0 Entonces
				Escribir peliDrama_2, " uni. Alcarrás";
			FinSi
			
			SI peliDrama_3 > 0 Entonces
				Escribir peliDrama_3, " uni. Blood Brothers";
			FinSi
			
			SI peliDrama_4 > 0 Entonces
				Escribir peliDrama_4, " uni. Royalteen: Arvingen";
			FinSi
			
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
					Escribir "Ingrese su nombre completo";
					Leer nombreCompleto;
					Escribir " ";
					Escribir "Ingrese su identificación";
					Leer identificacion;
					Escribir "Ingrese su numero de celular para podernos comunicar con usted";
					Leer celular;
					
					Escribir "Ingrese el reclamo";
					Leer reclamo;
					Escribir "Hola, ", nombreCompleto,  " disculpe las molestias, nos comunicaremos y resolveremos su caso lo mas pronto posible.";
					
				3:
					Escribir "Gracias por confiar en nosotros.";
				De Otro Modo:
					Escribir "La opción elegida no existe";
			FinSegun
		De Otro Modo:
			Escribir "La opción elegida no existe";	
	
    FinSegun
	
FinProceso

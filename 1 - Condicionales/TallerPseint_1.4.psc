// Funcion busca la pelicula en un arreglo y retorna el indice(posicion)
SubProceso posicion <- buscar_pelicula (pelicula, peliculas )
	
	Definir indice, posicion Como Entero;
	
	Para indice <- 0 Hasta 11 Con Paso 1 Hacer
		
		SI pelicula = peliculas[indice] Entonces
			posicion <- indice;
		FinSi
	FinPara
FinSubProceso

// Funcion muestra en pantalla las peliculas 
SubProceso mostrar_peliculas ( )
	Escribir "Peliculas por categoria";
	Escribir "------------------------";
	Escribir " ACCIÓN ";
	Escribir "------------------------";
	Escribir "- Sniper: Rogue Mission";
	Escribir "- Cazando a Ava Bravo";
	Escribir "- Codigo Emperador";
	Escribir "- Turno de día";
	Escribir " ";
	Escribir "------------------------";
	Escribir " TERROR ";
	Escribir "------------------------";
	Escribir "- They/Them";
	Escribir "- X";
	Escribir "- The Power";
	Escribir "- Hasta que mueras";
	Escribir " ";
	Escribir "------------------------";
	Escribir " DRAMA ";
	Escribir "------------------------";
	Escribir "- 365 Días más";
	Escribir "- Alcarrás";
	Escribir "- Blood Brothers";
	Escribir "- Royalteen: Arvingen";
FinSubProceso

// Funcion guarda los datos personales de usuarios
SubProceso solicitud_datos ( nombreCompleto Por Referencia, identificacion Por Referencia, celular Por Referencia )
	Escribir "Nombre completo";
	Leer nombreCompleto;
	Escribir " ";
	Escribir "Identificación";
	Leer identificacion;
	Escribir "Celular";
	Leer celular;
FinSubProceso

Proceso sin_titulo
	
		Definir peliculas, pelicula, salir, sugerencia, reclamo, nombreCompleto, identificacion Como Caracter;
		Definir cantidades, opcion, opcionRetiro, indice, descontar, celular Como Entero;

		Dimension peliculas[13];
		Dimension cantidades[13];
		
	peliculas[0] <- " ";
	peliculas[1] <- "Sniper Rogue Mission";
	peliculas[2] <- "Cazando a Ava Bravo";
	peliculas[3] <- "Codigo Emperador";
	peliculas[4] <- "Turno de día";
	peliculas[5] <- "They/Them";
	peliculas[6] <- "X";
	peliculas[7] <- "The Power";
	peliculas[8] <- "Hasta que mueras";
	peliculas[9] <- "365 Días más";
	peliculas[10] <- "Alcarrás";
	peliculas[11] <- "Blood Brothers";
	peliculas[12] <- "Royalteen: Arvingen";
	
	cantidades[0] <- 0;
	cantidades[1] <- 3;
	cantidades[2] <- 4;
	cantidades[3] <- 5;
	cantidades[4] <- 6;
	cantidades[5] <- 0;
	cantidades[6] <- 8;
	cantidades[7] <- 9;
	cantidades[8] <- 2;
	cantidades[9] <- 4;
	cantidades[10] <- 6;
	cantidades[11] <- 3;
	cantidades[12] <- 3;
	
	Repetir
		
		Escribir "Bienvenido a la Video Tienda";
		Escribir " ";
		
		Escribir "Elegir una opción";
		Escribir "1. Alquilar películas";
		Escribir "2. Consultar películas disponibles";
		Escribir "3. Recibir películas";
		Escribir "4. Salir de la app";
		Leer opcion;
		Limpiar Pantalla;
		
		Segun opcion Hacer
			
			1:
					mostrar_peliculas();
					
					Escribir " ";
					Escribir "Ingresa el nombre de la pelicula";
					Leer pelicula;
					Limpiar Pantalla;
					indice <- buscar_pelicula(pelicula, peliculas );
					
					SI indice > 0 Entonces
						descontar <- cantidades[indice];
						descontar <- descontar - 1;
						SI descontar < 0 Entonces
							Escribir "No hay unidades disponible";
						SiNo
							Escribir "Se agrego al carrito de compras la pelicula : ",peliculas[indice]; 
							cantidades[indice] <- descontar; 
							
							Escribir "Ingrese sus datos para generar la factura";
							solicitud_datos( nombreCompleto, identificacion, celular );
							Limpiar Pantalla;
							Escribir "Acercarse a caja a recoger el producto";
							Escribir "1 uni de la pelicula :", pelicula;
						FinSi
					SiNo
						Escribir "Pelicula no encontrada";
					FinSi
					
					Escribir "---------------------------------------------------------------------------------------------------------------------";
					Escribir "---------------------------------------------------------------------------------------------------------------------";
					Escribir " ";
				
			2:
				Repetir
					
					mostrar_peliculas();
					
					Escribir "Ingresa el nombre de la pelicula";
					Leer pelicula;
					Limpiar Pantalla;
					
					indice <- buscar_pelicula(pelicula, peliculas );
					
					SI indice > 0 Entonces
						Escribir cantidades[indice], "pz en Stock de la pelicula : ",peliculas[indice]; 
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
						Escribir "---------------------------------------------------------------------------------------------------------------------";
						Escribir "---------------------------------------------------------------------------------------------------------------------";
						Escribir " ";
						
					2:	
						solicitud_datos( nombreCompleto, identificacion, celular );
						
						Escribir "Ingrese el reclamo";
						Leer reclamo;
						
						Escribir "Hola, ", nombreCompleto,  " disculpe las molestias, nos comunicaremos y resolveremos su caso lo mas pronto posible.";
						Escribir "---------------------------------------------------------------------------------------------------------------------";
						Escribir "---------------------------------------------------------------------------------------------------------------------";
						Escribir " ";
					3:
						Escribir "Gracias por confiar en nosotros.";
					De Otro Modo:
						Escribir "La opción elegida no existe";
				FinSegun
		FinSegun
	Hasta Que opcion = 4 
		
FinProceso






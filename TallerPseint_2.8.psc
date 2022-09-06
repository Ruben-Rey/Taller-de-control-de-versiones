Proceso primeraApp
	
	Definir opcion, opcionSabor, opcionTorta, identificacion, cantidadTorta, total Como Entero;
	Definir sabor,torta, decoracion Como Caracter;
	Definir nombreCompleto, direccion Como Caracter;
	
	Definir stock Como Logico;
	stock <- Verdadero;
	
	Definir cantBreakable, cantMilenals, cantAmour, cantArcoiris Como Entero;
	Definir precio, precioBreakable, precioMilenals, precioAmour, precioArcoiris Como Real;
	
	total <- 400;
	
	cantBreakable <- 0;
	cantMilenals <- 5;
	cantAmour <- 2;
	cantArcoiris <- 0;
	
	precioBreakable <- 20; 
	precioMilenals <- 40;
	precioAmour <- 30;
	precioArcoiris <- 45;
	
	Escribir "1. Programar pedido";
	Escribir "2. Tortas disponibles";
	Escribir "3. Ventas diarias";
	Leer opcion;
	
	Segun opcion Hacer
		1: 
			Escribir "Elegir uno de los sabores";
			Escribir "1. Chocolate";
			Escribir "2. Vainilla";
			Leer opcionSabor;
			
			Limpiar Pantalla;
			Segun opcionSabor Hacer
				1:
					Escribir "Elegir una de las siguientes tortas";
					Escribir " ";
					Escribir "1. Breakable Heart Cake";
					Escribir "---------------------";
					Escribir "Sabor: Chocolate";
					Escribir "Relleno: Manjar blanco y Fudge";
					Escribir "Decoracion: Floral";
					Escribir "Porciones: 20";
					Escribir "Precio : ", precioBreakable, " dolares";
					Escribir " ";
					
					Escribir "2. Milenals Cake";
					Escribir "---------------------";
					Escribir "Sabor: Chocolate";
					Escribir "Relleno: Ganache";
					Escribir "Decoracion: Geometrico";
					Escribir "Porciones: 12";
					Escribir "Precio : ", precioMilenals, " dolares";
					
					Leer opcionTorta;
					
					Limpiar Pantalla;
					
					Segun opcionTorta Hacer
						1:
							torta <- "Breakable Heart Cake";
							precio <- precioBreakable;
				
						2:	
							torta <- "Milenals Cake";
							precio <- precioMilenals;
			
						De Otro Modo:
							Escribir "La opción elegida no existe";
					FinSegun
					
				2:	
					Escribir "Elegir una de las siguientes tortas";
					Escribir " ";
					
					Escribir "1. Amour Cake";
					Escribir "---------------------";
					Escribir "Sabor: Vainilla";
					Escribir "Relleno: Fudge";
					Escribir "Decoracion: Floral";
					Escribir "Porciones: 12";
					Escribir precioAmour, " dolares";
					Escribir " ";
					
					Escribir "2. Arcoiris";
					Escribir "---------------------";
					Escribir "Sabor: Vainilla";
					Escribir "Relleno: Manjar blanco";
					Escribir "Decoracion: Naked";
					Escribir "Porciones: 30";
					Escribir precioArcoiris, " dolares";
					Leer opcionTorta;
					
					Segun opcionTorta Hacer
						1:
							torta <- "Amour";
							precio <- precioAmour;
							
						2:	
							torta <- "Arcoiris";
							precio <- precioArcoiris;
			
						De Otro Modo:
							Escribir "La opción elegida no existe";
					FinSegun	

				De Otro Modo:
					Escribir "La opción elegida no existe";
			FinSegun
			
			
			Escribir "Ingrese la cantidad que desee";
			Leer cantidadTorta;
			
			SI torta = "Breakable Heart Cake" Entonces
				SI cantBreakable >= cantidadTorta y cantidadTorta > 0 Entonces
					cantBreakable <- cantBreakable - cantidadTorta;
				SiNo
					Escribir "No tenemos en stock esa cantidad";
					stock <- Falso;
				FinSi
			SiNo
				SI torta = "Milenals Cake" Entonces
					SI cantMilenals >= cantidadTorta y cantidadTorta > 0 Entonces
						cantMilenals <- cantMilenals - cantidadTorta;
					SiNo
						Escribir "No tenemos en stock esa cantidad";
						stock <- Falso;
					FinSi
					
				SiNo
					SI torta = "Amour" Entonces
						SI cantAmour >= cantidadTorta y cantidadTorta > 0 Entonces
							cantAmour <- cantAmour - cantidadTorta;
						SiNo
							Escribir "No tenemos en stock esa cantidad";
							stock <- Falso;
						FinSi
						
					SiNo
						SI torta = "Arcoiris" Entonces
							SI cantArcoiris >= cantidadTorta y cantidadTorta > 0 Entonces
								cantArcoiris <- cantArcoiris - cantidadTorta;
							SiNo
								Escribir "No tenemos en stock esa cantidad";
								stock <- Falso;
							FinSi
						FinSi	
					FinSi
				FinSi
			FinSi
			
			SI stock Entonces
				Escribir "Ingrese sus datos";
				Escribir "Ingrese nombre completo";
				Leer nombreCompleto;
				Escribir "Ingrese identificación";
				Leer identificacion;
				Escribir "Ingrese dirección";
				Leer direccion;
				Escribir "";
								
				Escribir "--------Detalle de la torta----------- ";
				Escribir cantidadTorta, " ", torta, " - Precio : ", precio, " dolares" ;
				Escribir "Favor de realizar el pago en caja";
				
				precio <- precio * cantidadTorta;
				total <- total + precio;
			FinSi

		2:
			Escribir "Tortas disponibles";
			SI cantBreakable > 0 Entonces
				Escribir cantBreakable, " pz Breakable Heart Cake";
			FinSi
			
			SI cantMilenals > 0 Entonces
				Escribir cantMilenals, " pz Milenals Cake";
			FinSi
			
			SI cantAmour > 0 Entonces
				Escribir cantAmour, " pz Amour Cake";
			FinSi
			
			SI cantArcoiris > 0 Entonces
				Escribir cantArcoiris, " pz Arcoiris";
			FinSi
						
		3:
			Escribir "Venta del dia";
			Escribir total, " dolares";
		De Otro Modo:
			Escribir "La opción elegida no existe";
			
	FinSegun
	
	
	
FinProceso

Proceso maquinista
	
	Definir nombreCompleto, direccion, modelMoto, placaMoto, probleMoto, recoPlacaMoto, fechaIngreso Como Caracter;
	Definir identificacion, componentes Como Entero;
	Definir opcion	Como Entero;
	Definir servicio Como Logico;
	
	Definir precioTotal Como Real;
	Definir precioRevision Como Real;
	Definir precioMantenimiento Como Real;
	Definir precioReparacion Como Real;
	precioRevision <- 50;
	precioMantenimiento <- 70;
	precioReparacion <- 40;
	
	Definir precioBujia Como Real;
	Definir precioPastillasFreno Como Real;
	Definir precioBateria Como Real;
	Definir precioNeumaticos Como Real;
	precioBujia <- 10;
	precioPastillasFreno <- 20;
	precioBateria <- 50;
	precioNeumaticos <- 40;
	
	Definir cantidadBujia, inputBujia Como Entero;
	Definir cantidadPastillas, inputPastilla Como Entero;
	Definir cantidadBateria Como Entero;
	Definir cantidadNeumaticos Como Entero;
	
	cantidadBujia <- 10;
	cantidadPastillas <- 2;
	cantidadBateria <- 1;
	cantidadNeumaticos <-3;
	
	placaMoto <- "1456";
	
	Escribir "Bienvenido al taller el Maquinista";
	Escribir "Escoja una de las siguientes opciones";
	Escribir "1. Servicio de Revisión";
	Escribir "2. Recoger motocicleta";
	Escribir "3. Inventario de repuestos";
	Leer opcion;	
	
	Segun opcion Hacer
		1:
			Escribir "Ingrese el nombre completo del usuario";
			Leer nombreCompleto;
			Escribir "Ingrese la identificación del usuario";
			Leer identificacion;
			Escribir "Ingrese la dirección del usuario";
			Leer direccion;
			Escribir "Ingrese el modelo de la motocicleta";
			Leer modelMoto;
			Escribir "Ingrese la placa de la motocicleta";
			Leer placaMoto;
			Escribir "Fecha de ingreso";
			Leer fechaIngreso;
			
			Escribir "Ingrese algunos detalles del problema";
			Leer probleMoto;
			
			Escribir "El tiempo estimado de la revisión es de 30 a 45m, favor de esperar, gracias";
			Escribir "Se realizó la revisión de la moto, se necesita realizar lo siguiente : ";
			Escribir "El cambio de 02 piezas de bujia y la limpieza de los filtros(mant.) ";
			Escribir "Para generar la cotización ingrese al sistema los repuestos que se necesitan";
			
			Escribir "1. Bujias";  //incluye Man y Reparación
			Escribir "2. Pastillas de freno";  //incluye Man y Reparación
			Escribir "3. Mantenimiento";
			Leer componentes;
			
			Segun componentes Hacer
				1:
					Escribir "Ingrese la cantidad de bujias";
					Leer inputBujia;
					
					SI inputBujia <= cantidadBujia Entonces
						precioTotal <- (precioBujia * inputBujia) + precioMantenimiento + precioReparacion;
						
						Escribir "El precio del servicio es : $", precioTotal, " dolares.";
						Escribir "¿Desea que realicemos el servicio de Reparación?";
						Leer servicio;
						
						Si servicio Entonces
							cantidadBujia <- cantidadBujia - inputBujia;
							Escribir "Se iniciara el servicio de reparación";
							Escribir "Acerquese a caja a realizar el pago del servicio, gracias";
						SiNo
							Escribir "Favor de pasar al area de entrega";
						FinSi
					SiNo
						Escribir "No tenemos esa cantidad en stock";
					FinSi
					
				2:
					Escribir "Ingrese la cantidad de pastillas de freno";
					Leer inputPastilla;
					
					SI inputPastilla <= cantidadPastillas Entonces
						precioTotal <- (precioPastillasFreno * inputPastilla) + precioMantenimiento + precioReparacion;
						
						Escribir "El precio del servicio es : $", precioTotal, " dolares.";
						Escribir "¿Desea que realicemos el servicio de Reparación?";
						Leer servicio;
						
						Si servicio Entonces
							cantidadPastillas <- cantidadPastillas - inputPastilla;
							Escribir "Se iniciara el servicio de reparación";
							Escribir "Acerquese a caja a realizar el pago del servicio, gracias";
						SiNo
							Escribir "Favor de pasar al area de entrega";
						FinSi
					SiNo
						Escribir "No tenemos esa cantidad en stock";
					FinSi
				
				3:
					Escribir "El precio del mantenimiento es : $", precioMantenimiento, " dolares.";
					
				De Otro Modo:
					Escribir "La opción elegida no existe";
			FinSegun
			
		2:
			
			Escribir "Area de entrega de motocicleta";
			Escribir "Ingrese el numero de placa";
			Leer recoPlacaMoto;
			
			Si placaMoto = recoPlacaMoto Entonces
				Escribir "Su motocicleta esta reparada, se lista el detalle de la reparación :";
				Escribir "Cambio de 02 pz de bujia(Reparacion) y mantenimiento";
			SiNo
				Escribir "Placa incorrecta, vuelva a ingresar";
			FinSi
			
		3:
			Escribir "Inventario";
			Escribir cantidadBujia, " pz Bujias";
			Escribir cantidadPastillas, " pz Pastillas de frenos";
			Escribir cantidadBateria, " pz Baterias";
			Escribir cantidadNeumaticos, " pz Neumaticos";
			
		De Otro Modo:
			Escribir "La opción elegida no existe";
			
	FinSegun
	
	
FinProceso


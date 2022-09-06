Proceso sin_titulo
	Definir nombreCompleto1, nombreCompleto2, nombreCompleto3, buscarContacto, inputNombre Como Caracter;
	Definir opcion, opcionSlot, eliminar, celular1, celular2, celular3, inputCell Como Entero;
	Definir inputOrganizacion, organizacion1, organizacion2, organizacion3 Como Caracter;
	Definir slot1, slot2, slot3 Como Logico;
	slot1 <- Verdadero;
	slot2 <- Verdadero;
	slot3 <- Verdadero;
	celular1 <- 0;
	celular2 <- 0;
	celular3 <- 0;
	nombreCompleto1 <- " ";
	nombreCompleto2 <- " ";
	nombreCompleto3 <- " ";
	Repetir
		Escribir "Prototipo de contactos telefonicos";
		Escribir "1. Añadir contactos";
		Escribir "2. Buscar contactos";
		Escribir "3. Eliminar contactos";
		Escribir "4. Salir de la app";
		
		Escribir "Seleccion una de las opciones";
		Leer opcion;
		
		Segun opcion Hacer
			1:
				SI slot1 Entonces
					Escribir "1. Slot disponible";
				SiNo
					Escribir "1. NO disponible";
				FinSi
				
				SI slot2 Entonces
					Escribir "2. Slot disponible";
				SiNo
					Escribir "2. NO disponible";
				FinSi
				
				SI slot3 Entonces
					Escribir "3. Slot disponible";
				SiNo
					Escribir "3. NO disponible";
				FinSi
				
				Escribir "Seleccione un slot disponible";
				Leer opcionSlot;
				
				Limpiar Pantalla;
				
				Segun opcionSlot Hacer
					1:
						SI slot1 Entonces
							Escribir "Ingrese el nombre completo";
							Leer inputNombre; 
							Escribir "Ingrese el numero de celular";
							Leer inputCell;
							
							SI inputCell = celular1 o inputCell = celular2 o inputCell = celular3 Entonces
								Escribir "Ese numero de celular ya esta agregado";
							SiNo
								Escribir "Ingrese la organización";
								Leer inputOrganizacion;
								
								Limpiar Pantalla;
								celular1 <- inputCell;
								nombreCompleto1 <- inputNombre;
								organizacion1 <- inputOrganizacion;
								slot1 <- Falso;
							FinSi
						SiNo
							Escribir "Tiene un contacto guardado escoja otro slot";
						FinSi
						
					2:	
						SI slot2 Entonces
							Escribir "Ingrese el nombre completo";
							Leer inputNombre; 
							Escribir "Ingrese el numero de celular";
							Leer inputCell;
							
							SI inputCell = celular1 o inputCell = celular2 o inputCell = celular3 Entonces
								Escribir "Ese numero de celular ya esta agregado";
							SiNo
								Escribir "Ingrese la organización";
								Leer inputOrganizacion;
								
								Limpiar Pantalla;
								celular2 <- inputCell;
								nombreCompleto2 <- inputNombre;
								organizacion2 <- inputOrganizacion;
								slot2 <- Falso;
							FinSi
						SiNo
							Escribir "Tiene un contacto guardado escoja otro slot";
						FinSi
						
					3:
						SI slot3 Entonces
							Escribir "Ingrese el nombre completo";
							Leer inputNombre; 
							Escribir "Ingrese el numero de celular";
							Leer inputCell;
							
							SI inputCell = celular1 o inputCell = celular2 o inputCell = celular3 Entonces
								Escribir "Ese numero de celular ya esta agregado";
							SiNo
								
								Escribir "Ingrese la organización";
								Leer inputOrganizacion;
								
								Limpiar Pantalla;
								
								celular3 <- inputCell;
								nombreCompleto3 <- inputNombre;
								organizacion3 <- inputOrganizacion;
								slot3 <- Falso;
							FinSi
						SiNo
							Escribir "Tiene un contacto guardado escoja otro slot";
						FinSi
						
					De Otro Modo:
						Escribir "Esa opcion no existe";
				FinSegun
			2:
				Escribir "Ingrese el nombre del contacto que desea buscar";
				Leer buscarContacto;
				
				Limpiar Pantalla;
				
				SI buscarContacto = nombreCompleto1 Entonces
					Escribir buscarContacto, " numero de celular es ", celular1;
				SiNo
					SI buscarContacto = nombreCompleto2 Entonces
						Escribir buscarContacto, " numero de celular es ", celular2;
					SiNo
						SI buscarContacto = nombreCompleto3 Entonces
							Escribir buscarContacto, " numero de celular es ", celular3;
						SiNo
							Escribir "Contacto no encontrado";
						Finsi
					Finsi
				FinSi
				
			3:		
				SI NO slot1 o NO slot2 o NO slot3 Entonces
					
					SI NO slot1 Entonces
						Escribir "1. ", nombreCompleto1, " numero de celular es ", celular1;
					FinSi
					
					SI NO slot2 Entonces
						Escribir "2. ", nombreCompleto2, " numero de celular es ", celular2;
					FinSi
					
					SI NO slot3 Entonces
						Escribir "3. ", nombreCompleto3, " numero de celular es ", celular3;
					FinSi
					
					Escribir "Seleccione el contacto que desea eliminar";
					Leer eliminar;
					
					Limpiar Pantalla;
					
					Segun eliminar Hacer
						1:
							nombreCompleto1 <- " ";
							celular1 <- 0;
							slot1 <- Verdadero;
						2:
							nombreCompleto2 <- " ";
							celular2 <- 0;
							slot2 <- Verdadero;
							
						3:
							nombreCompleto3 <- " ";
							celular3 <- 0;
							slot3 <- Verdadero;
							
						De Otro Modo:
							Escribir "Esa opcion no existe";
					FinSegun
				SiNo
					Escribir "No tiene contactos";
				FinSi
				
			De Otro Modo:
				Escribir "Esa opción no existe";
				
		FinSegun
	Hasta Que opcion = 4
	
	
	
FinProceso

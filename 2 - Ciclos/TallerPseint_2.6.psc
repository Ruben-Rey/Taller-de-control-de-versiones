SubProceso eliminar_contactos ( contactos, cont, indice )
	
	SI indice > -1 Entonces
		Escribir "Contacto eliminado";
		contactos[indice,0] <- " ";
		contactos[indice,1] <- "0";
		contactos[indice,2] <- " ";
	FinSi
	
FinSubProceso

SubProceso posicion <- buscar_contactos ( contactos, cont )
	Definir inputNombre Como Caracter;
	Definir indice, posicion Como Entero;
	
	posicion <- -1;
	
	Escribir "Ingrese el nombre";
	Leer inputNombre;
	
	Limpiar Pantalla;
	Para indice <- 0 Hasta cont-1 Con Paso 1 Hacer
		SI inputNombre = contactos[indice,0] Entonces
			Escribir "Numero de Celular :",contactos[indice,1];
			Escribir "Organización :", contactos[indice,2];
			posicion <- indice;
		FinSi
	FinPara
	
	Escribir "---------------------------------------------------------------------------------------------------------------------";
	Escribir "---------------------------------------------------------------------------------------------------------------------";
	Escribir " ";
	
	
FinSubProceso

SubProceso agregar_contactos ( contactos, cont Por Referencia )
	
	Definir indice Como Entero;
	Escribir "Verificacion si el contacto existe";
	indice <- buscar_contactos ( contactos, cont );
	
	SI indice < 0 Entonces
		Definir nombreCompleto, organizacion Como Caracter;
		Definir celular Como Entero;
		Escribir "No se encuentra el contacto, continue para agregar contacto";
		Escribir "Nombre completo";
		Leer nombreCompleto; 
		Escribir "Numero de celular";
		Leer celular;
		Escribir "Organizacion";
		Leer organizacion;
		
		Limpiar Pantalla;
		contactos[cont,0] <- nombreCompleto;
		contactos[cont,1] <- ConvertirATexto(celular);
		contactos[cont,2] <- organizacion; 
		
		cont <- cont + 1;
	SIno
		Escribir "Contacto ya se encuentra agregado";
	FinSi
	
	
	
FinSubProceso

Proceso sin_titulo
	
	Definir nombreCompleto, organizacion, contactos Como Caracter;
	Definir celular, opcion, cont, indice Como Entero;
	cont <- 0;
	Dimension contactos[3,3];
	
	Repetir
		
		Escribir "Prototipo de contactos telefonicos";
		Escribir "1. Añadir contactos";
		Escribir "2. Buscar contactos";
		Escribir "3. Eliminar contactos";
		Escribir "4. Salir de la app";
		Leer opcion;
		
		Segun opcion Hacer
			
			1:
				agregar_contactos( contactos, cont );

			2:
				indice <- buscar_contactos( contactos, cont );
				
				SI indice < 0 Entonces
					Escribir "Contacto no encontrado";
				FinSi
				
			3:
				indice <- buscar_contactos( contactos, cont );
				eliminar_contactos( contactos, cont, indice );
				
		FinSegun
		
	Hasta Que opcion = 4
	
	
	
	
FinProceso

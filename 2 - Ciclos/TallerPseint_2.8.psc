SubProceso mostrar_estudiantes ( estudiantes, cont )
	Definir indice Como Entero;
	
	Escribir cont;
	Para indice <- 0 Hasta cont-1 Con Paso 1 Hacer
		Escribir " - Nombre Completo :", estudiantes[indice,1], ", Identificacion :", estudiantes[indice,0], ", Aprobado :", estudiantes[indice,4], ", Puntaje :", estudiantes[indice,3];
	FinPara
FinSubProceso


SubProceso posicion <- buscar_estudiantes ( estudiantes, cont )
	
	Definir posicion, indice, inputIdentificacion Como Entero;
	posicion <- -1;
	
	Escribir "Ingrese su identificacion";
	Leer inputIdentificacion;	
	
	Para indice <- 0 Hasta cont -1 Con Paso 1 Hacer
		SI inputIdentificacion = ConvertirANumero(estudiantes[indice,0]) Entonces
			posicion <- indice;
		FinSi
	FinPara
	
FinSubProceso

SubProceso agregar_estudiantes( estudiantes, cont )
	
	Definir nombreCompleto, identificacion Como Caracter;
	Definir celular Como Entero;
		
	Escribir "Nombre completo";
	Leer nombreCompleto;
	Escribir "Numero de celular";
	Leer celular;
	Escribir "Identificación";
	Leer identificacion;
		
	estudiantes[cont,0] <- identificacion;
	estudiantes[cont,1] <- nombreCompleto;
	estudiantes[cont,2] <- ConvertirATexto(celular);
	estudiantes[cont,3] <- "0";
	estudiantes[cont,4] <- "no";
	
FinSubProceso



Proceso sin_titulo
	
	Definir opcion, cont, indice, inputPuntaje Como Entero;
	Definir estudiantes Como Caracter;
	Dimension estudiantes[8,5];
	cont <- 0;
	
	
	Repetir
		Escribir "APLICACIÓN DE REGISTRO DE CURSOS";
		Escribir "----------------------------------";
		Escribir "1. Añadir usuarios al curso";
		Escribir "2. Usuarios que llevaron el curso";
		Escribir "3. Ingreso de notas";
		Escribir "4. Salir de la app";
		Leer opcion;
		
		Segun opcion Hacer
			1:	
				SI cont < 8 Entonces
					agregar_estudiantes( estudiantes, cont );
					cont <- cont + 1;
				SiNo
					Escribir "No hay vacante";
				FinSi
				
				
			2:
				mostrar_estudiantes( estudiantes, cont );
				
			3:
				indice <- buscar_estudiantes( estudiantes, cont );
				SI indice > -1 Entonces
					Escribir "Datos del estudiantes:";
					Escribir "-----------------------";
					Escribir "Nombre completo :", estudiantes[indice,1];
					Escribir "Identificacion :", estudiantes[indice,0];
					Escribir "Celular :", estudiantes[indice,2];
					Escribir "----------------------------------";
					Escribir "Ingrese el puntaje";
					Leer inputPuntaje;
					
					SI inputPuntaje > 0 y inputPuntaje <= 100 Entonces
						estudiantes[indice,3] <- ConvertirATexto(inputPuntaje);
						SI inputPuntaje >= 80 Entonces
							estudiantes[indice,4] <- "SI";
						FinSi
						
						
					FinSi
				FinSi
			De Otro Modo:
				Escribir "Opcion no encontrada";
		FinSegun
		
	Hasta Que opcion = 4
	
	
	
	
	
	
FinProceso

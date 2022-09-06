Proceso sin_titulo
	Definir nombreCompleto Como Caracter;
	Definir opcion Como Entero;
	Repetir
		Escribir "1. Capturar nombre";
		Escribir "2. Saludar persona";
		Escribir "3. Salir del sistema";
		
		Escribir "Escoja la opción que desee";
		Leer opcion;
		
		Limpiar Pantalla;
		
		Segun opcion Hacer
			1:
				Escribir "Ingrese su nombre completo";
				Leer nombreCompleto;
				
				Limpiar Pantalla;
			2:
				Escribir "Hola ", nombreCompleto;
			3: 
				opcion <- 3;
			De Otro Modo:
				Escribir "Esa opción no existe";
			
		FinSegun
		
	Hasta Que opcion = 3;
	
	
FinProceso

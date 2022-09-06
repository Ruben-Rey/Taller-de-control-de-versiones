Proceso sin_titulo
	//	ingresar al parqueadero, retirar del parqueadero y consultar si un vehículo
	Definir nombreCompleto1, nombreCompleto2, nombreCompleto3, nombreCompleto4, nombreCompleto5 Como Caracter;
	Definir inputPlaca, placa1, placa2, placa3, placa4, placa5 Como Caracter;
	Definir marca1, marca2, marca3, marca4, marca5 Como Caracter;
	Definir opcion, celular1, celular2, celular3, celular4, celular5 Como Entero;
	Definir slot1, slot2, slot3, slot4, slot5 Como Logico;
	slot1 <- Verdadero;
	slot2 <- Verdadero;
	slot3 <- Verdadero;
	slot4 <- Verdadero;
	slot5 <- Verdadero;
	placa1 <- " ";
	placa2 <- " ";
	placa3 <- " ";
	placa4 <- " ";
	placa5 <- " ";

	Repetir
		
		Escribir "Parqueadero el guardian";
		Escribir "------------------------";
		Escribir "1. Ingreso al parqueadero";
		Escribir "2. Retirar del parqueadero";
		Escribir "3. Consulta de Vehículo en el parqueadero";
		Escribir "4. Salir de la app";
		Escribir "Seleccione una de las siguientes opciones";
		Leer opcion;
	
		Limpiar Pantalla;
	
		Segun opcion Hacer
			1:
				SI slot1 Entonces
					Escribir "Ingrese los datos del usuario";
					Escribir "Nombre completo";
					Leer nombreCompleto1;
					Escribir "Numero de celular";
					Leer celular1;
					Escribir "Marca del automovil";
					Leer marca1;
					Escribir "Placa";
					Leer placa1;
					slot1 <- Falso;
					Escribir "Slot1";
				SiNo
					SI slot2 Entonces
						Escribir "Ingrese los datos del usuario";
						Escribir "Nombre completo";
						Leer nombreCompleto2;
						Escribir "Numero de celular";
						Leer celular2;
						Escribir "Marca del automovil";
						Leer marca2;
						Escribir "Placa";
						Leer placa2;
						slot2 <- Falso;
						Escribir "Slot2";
					SiNo
						SI slot3 Entonces
							Escribir "Ingrese los datos del usuario";
							Escribir "Nombre completo";
							Leer nombreCompleto3;
							Escribir "Numero de celular";
							Leer celular3;
							Escribir "Marca del automovil";
							Leer marca3;
							Escribir "Placa";
							Leer placa3;
							slot3 <- Falso;
							Escribir "Slot3";
							
						SiNo
							SI slot4 Entonces
								Escribir "Ingrese los datos del usuario";
								Escribir "Nombre completo";
								Leer nombreCompleto4;
								Escribir "Numero de celular";
								Leer celular4;
								Escribir "Marca del automovil";
								Leer marca4;
								Escribir "Placa";
								Leer placa4;
								slot4 <- Falso;
								Escribir "Slot4";
							SiNo
								SI slot5 Entonces
									Escribir "Ingrese los datos del usuario";
									Escribir "Nombre completo";
									Leer nombreCompleto5;
									Escribir "Numero de celular";
									Leer celular5;
									Escribir "Marca del automovil";
									Leer marca5;
									Escribir "Placa";
									Leer placa5;
									slot5 <- Falso;
									Escribir "Slot5";
								SiNo
									Escribir "No hay espacio disponible";
								FinSi
							FinSi	
						FinSi
					FinSi
				FinSi
			2:
				Escribir "Ingrese la placa";
				Leer inputPlaca;
				
				Limpiar Pantalla;
				
				SI placa1 = inputPlaca Entonces
					Escribir "El vehiculo con placa : ", placa1, " retirado del slot: #1";
					nombreCompleto1 <- " ";
					celular1 <- 0;
					marca1 <- " ";
					placa1 <- " ";
					slot1 <- Verdadero;
				SiNo
					SI placa2 = inputPlaca Entonces
						Escribir "El vehiculo con placa : ", placa2, " retirado del slot: #2";
						nombreCompleto2 <- " ";
						celular2 <- 0;
						marca2 <- " ";
						placa2 <- " ";
						slot2 <- Verdadero;
					SiNo
						SI placa3 = inputPlaca Entonces
							Escribir "El vehiculo con placa : ", placa3, " retirado del slot: #3";
							nombreCompleto3 <- " ";
							celular3 <- 0;
							marca3 <- " ";
							placa3 <- " ";
							slot3 <- Verdadero;
						SiNo
							SI placa4 = inputPlaca Entonces
								Escribir "El vehiculo con placa : ", placa4, " retirado del slot: #4";
								nombreCompleto4 <- " ";
								celular4 <- 0;
								marca4 <- " ";
								placa4 <- " ";
								slot4 <- Verdadero;
							SiNo
								SI placa5 = inputPlaca Entonces
									Escribir "El vehiculo con placa : ", placa5, " retirado del slot: #5";
									nombreCompleto5 <- " ";
									celular5 <- 0;
									marca5 <- " ";
									placa5 <- " ";
									slot5 <- Verdadero;
								SiNo
									Escribir "Aquella placa no se encuentra";
								FinSi
							FinSi
						FinSi
					FinSi
					
				FinSi
			
			3:
				Escribir "Ingrese la placa";
				Leer inputPlaca;
				
				Limpiar Pantalla;
				
				SI placa1 = inputPlaca Entonces
					Escribir "El vehiculo con placa : ", placa1, " se encuentra en el slot: #1"; 
				SiNo
					SI placa2 = inputPlaca Entonces
						Escribir "El vehiculo con placa : ", placa2, " se encuentra en el slot: #2";
					SiNo
						SI placa3 = inputPlaca Entonces
							Escribir "El vehiculo con placa : ", placa3, " se encuentra en el slot: #3";
						SiNo
							SI placa4 = inputPlaca Entonces
								Escribir "El vehiculo con placa : ", placa4, " se encuentra en el slot: #4";
							SiNo
								SI placa5 = inputPlaca Entonces
									Escribir "El vehiculo con placa : ", placa5, " se encuentra en el slot: #5";
								SiNo
									Escribir "Aquella placa no se encuentra";
								FinSi
							FinSi
						FinSi
					FinSi
					
				FinSi
				
			De Otro Modo:
				Escribir "Esa opción no existe";
				
			
		FinSegun
				
	Hasta Que opcion = 4 
	
	
	
FinProceso

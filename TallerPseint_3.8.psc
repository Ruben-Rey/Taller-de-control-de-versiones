Proceso sin_titulo
	//	su ingreso al curso, consultar usuarios que hayan presentado el curso y resultados de la prueba del curso (si fueron aprobados o no)
	Definir nombreCompleto1, nombreCompleto2, nombreCompleto3, nombreCompleto4, nombreCompleto5, nombreCompleto6, nombreCompleto7, nombreCompleto8 Como Caracter;
	Definir identificacion1, identificacion2, identificacion3, identificacion4, identificacion5, identificacion6, identificacion7, identificacion8 Como Entero;
	Definir inputPuntaje, puntaje1, puntaje2, puntaje3, puntaje4, puntaje5, puntaje6, puntaje7, puntaje8 Como Entero;
	Definir opcion, inputIdent, celular1, celular2, celular3, celular4, celular5, celular6, celular7, celular8 Como Entero;
	Definir slot1, slot2, slot3, slot4, slot5, slot6, slot7, slot8 Como Logico;
	Definir aprobo1, aprobo2, aprobo3, aprobo4, aprobo5, aprobo6, aprobo7, aprobo8 Como Logico;
	
	slot1 <- Verdadero;
	slot2 <- Verdadero;
	slot3 <- Verdadero;
	slot4 <- Verdadero;
	slot5 <- Verdadero;
	slot6 <- Verdadero;
	slot7 <- Verdadero;
	slot8 <- Verdadero;
	
	identificacion1 <- 0;
	identificacion2 <- 0;
	identificacion3 <- 0;
	identificacion4 <- 0;
	identificacion5 <- 0;
	identificacion6 <- 0;
	identificacion7 <- 0;
	identificacion8 <- 0;
	
	puntaje1 <- 0;
	puntaje2 <- 0;
	puntaje3 <- 0;
	puntaje4 <- 0;
	puntaje5 <- 0;
	puntaje6 <- 0;
	puntaje7 <- 0;
	puntaje8 <- 0;
	
	Repetir
		
		Escribir "APLICACIÓN DE REGISTRO DE CURSOS";
		Escribir "----------------------------------";
		Escribir "1. Añadir usuarios al curso";
		Escribir "2. Usuarios que llevaron el curso";
		Escribir "3. Ingreso de notas";
		Escribir "4. Salir de la app";
		Leer opcion;
		
		Limpiar Pantalla;
		
		Segun opcion Hacer
			1:
				Escribir "Ingrese los datos del usuario";
				Escribir "Identificación";
				Leer inputIdent;
				
				SI inputIdent = identificacion1 o inputIdent = identificacion2 o inputIdent = identificacion3 o inputIdent = identificacion4 o inputIdent = identificacion5 o inputIdent = identificacion6 o inputIdent = identificacion7 o inputIdent = identificacion8 Entonces
					Escribir "Ese usuario ya esta registrado";
					
				SiNo
					SI slot1 Entonces
						Escribir "Nombre completo";
						Leer nombreCompleto1;
						Escribir "Numero de celular";
						Leer celular1;
						identificacion1 <- inputIdent;
						
						aprobo1 <- Falso;
						slot1 <- Falso;
						
					SiNo
						SI slot2 Entonces
							Escribir "Nombre completo";
							Leer nombreCompleto2;
							Escribir "Numero de celular";
							Leer celular2;
							identificacion2 <- inputIdent;
							
							aprobo2 <- Falso;
							slot2 <- Falso;
						SiNo
							SI slot3 Entonces
								Escribir "Nombre completo";
								Leer nombreCompleto3;
								Escribir "Numero de celular";
								Leer celular3;
								identificacion3 <- inputIdent;
								
								aprobo3 <- Falso;
								slot3 <- Falso;
								
							SiNo
								SI slot4 Entonces
									Escribir "Nombre completo";
									Leer nombreCompleto4;
									Escribir "Numero de celular";
									Leer celular4;
									identificacion4 <- inputIdent;
									
									aprobo4 <- Falso;
									slot4 <- Falso;
									
								SiNo
									SI slot5 Entonces
										Escribir "Nombre completo";
										Leer nombreCompleto5;
										Escribir "Numero de celular";
										Leer celular5;
										identificacion5 <- inputIdent;
										
										aprobo5 <- Falso;
										slot5 <- Falso;
										
									SiNo
										SI slot6 Entonces
											Escribir "Nombre completo";
											Leer nombreCompleto6;
											Escribir "Numero de celular";
											Leer celular6;
											identificacion6 <- inputIdent;
											
											aprobo6 <- Falso;
											slot6 <- Falso;
											
										SiNo
											SI slot7 Entonces
												Escribir "Nombre completo";
												Leer nombreCompleto7;
												Escribir "Numero de celular";
												Leer celular7;
												identificacion1 <- inputIdent;
												
												aprobo7 <- Falso;
												slot7 <- Falso;
												
											SiNo
												SI slo8 Entonces
													Escribir "Nombre completo";
													Leer nombreCompleto8;
													Escribir "Numero de celular";
													Leer celular8;
													identificacion1 <- inputIdent;
													
													aprobo8 <- Falso;
													slot8 <- Falso;
													
												SiNo
													Escribir "No hay vacante disponible";
												FinSi
											FinSi
										FinSi
									FinSi
								FinSi	
							FinSi
						FinSi
					FinSi
				FinSi
				
			2:
				SI NO slot1 Entonces
					Escribir nombreCompleto1, " con identificación :", identificacion1, " Aprobado: ", aprobo1, " con puntaje de: ", puntaje1;
				FinSi
				
				SI NO slot2 Entonces
					Escribir nombreCompleto2, " con identificación :", identificacion2, " Aprobado: ", aprobo2, " con puntaje de: ", puntaje2;
				FinSi
				
				SI NO slot3 Entonces
					Escribir nombreCompleto3, " con identificación :", identificacion3, " Aprobado: ", aprobo3, " con puntaje de: ", puntaje3;
				FinSi
				
				SI NO slot4 Entonces
					Escribir nombreCompleto4, " con identificación :", identificacion4, " Aprobado: ", aprobo4, " con puntaje de: ", puntaje4;
				FinSi
				
				SI NO slot5 Entonces
					Escribir nombreCompleto5, " con identificación :", identificacion5, " Aprobado: ", aprobo5, " con puntaje de: ", puntaje5;
				FinSi
				
				SI NO slot6 Entonces
					Escribir nombreCompleto6, " con identificación :", identificacion6, " Aprobado: ", aprobo6, " con puntaje de: ", puntaje6;
				FinSi
				
				SI NO slot7 Entonces
					Escribir nombreCompleto7, " con identificación :", identificacion7, " Aprobado: ", aprobo7, " con puntaje de: ", puntaje7;
				FinSi
				
				SI NO slot8 Entonces
					Escribir nombreCompleto9, " con identificación :", identificacion8, " Aprobado: ", aprobo8, " con puntaje de: ", puntaje8;
				FinSi
				
			3:
				Escribir "Notas";
				Escribir "----------------------------------";
				Escribir "Ingrese el numero de identificación";
				Leer inputIdent;
				
				SI inputIdent = identificacion1 Entonces
					Escribir "Ingrese la nota entre el 0 al 100, del estudiante : ", nombreCompleto1; 
					Leer inputPuntaje;
					
					Limpiar Pantalla;
					SI inputPuntaje > 0 y inputPuntaje <= 100 Entonces
						puntaje1 <- inputPuntaje;
						
						SI puntaje1 >= 80 Entonces
							aprobo1 <- Verdadero;
						SiNo
							aprobo1 <- Falso;
						FinSi
					SiNo
						Escribir "Solo se permite valores en el rango del 0 al 100";
					FinSi
					
				SiNo
					SI inputIdent = identificacion2 Entonces
						Escribir "Ingrese la nota entre el 0 al 100, del estudiante : ", nombreCompleto2; 
						Leer inputPuntaje;
						
						Limpiar Pantalla;
						SI inputPuntaje > 0 y inputPuntaje <= 100 Entonces
							puntaje2 <- inputPuntaje;
							
							SI puntaje2 >= 80 Entonces
								aprobo2 <- Verdadero;
							SiNo
								aprobo2 <- Falso;
							FinSi
						SiNo
							Escribir "Solo se permite valores en el rango del 0 al 100";
						FinSi
					SiNo
						SI inputIdent = identificacion3 Entonces
							Escribir "Ingrese la nota entre el 0 al 100, del estudiante : ", nombreCompleto3; 
							Leer inputPuntaje;
							
							Limpiar Pantalla;
							SI inputPuntaje > 0 y inputPuntaje <= 100 Entonces
								puntaje3 <- inputPuntaje;
								
								SI puntaje3 >= 80 Entonces
									aprobo3 <- Verdadero;
								SiNo
									aprobo3 <- Falso;
								FinSi
							SiNo
								Escribir "Solo se permite valores en el rango del 0 al 100";
							FinSi
						SiNo
							SI inputIdent = identificacion4 Entonces
								Escribir "Ingrese la nota entre el 0 al 100, del estudiante : ", nombreCompleto4; 
								Leer inputPuntaje;
								
								Limpiar Pantalla;
								SI inputPuntaje > 0 y inputPuntaje <= 100 Entonces
									puntaje4 <- inputPuntaje;
									
									SI puntaje4 >= 80 Entonces
										aprobo4 <- Verdadero;
									SiNo
										aprobo4 <- Falso;
									FinSi
								SiNo
									Escribir "Solo se permite valores en el rango del 0 al 100";
								FinSi
							SiNo
								SI inputIdent = identificacion5 Entonces
									Escribir "Ingrese la nota entre el 0 al 100, del estudiante : ", nombreCompleto5; 
									Leer inputPuntaje;
									
									Limpiar Pantalla;
									SI inputPuntaje > 0 y inputPuntaje <= 100 Entonces
										puntaje5 <- inputPuntaje;
										
										SI puntaje5 >= 80 Entonces
											aprobo5 <- Verdadero;
										SiNo
											aprobo5 <- Falso;
										FinSi
									SiNo
										Escribir "Solo se permite valores en el rango del 0 al 100";
									FinSi
								SiNo
									SI inputIdent = identificacion6 Entonces
										Escribir "Ingrese la nota entre el 0 al 100, del estudiante : ", nombreCompleto6; 
										Leer inputPuntaje;
										
										Limpiar Pantalla;
										SI inputPuntaje > 0 y inputPuntaje <= 100 Entonces
											puntaje6 <- inputPuntaje;
											
											SI puntaje6 >= 80 Entonces
												aprobo6 <- Verdadero;
											SiNo
												aprobo6 <- Falso;
											FinSi
										SiNo
											Escribir "Solo se permite valores en el rango del 0 al 100";
										FinSi
									SiNo
										SI inputIdent = identificacion7 Entonces
											Escribir "Ingrese la nota entre el 0 al 100, del estudiante : ", nombreCompleto7; 
											Leer inputPuntaje;
											
											Limpiar Pantalla;
											SI inputPuntaje > 0 y inputPuntaje <= 100 Entonces
												puntaje7 <- inputPuntaje;
												
												SI puntaje7 >= 80 Entonces
													aprobo7 <- Verdadero;
												SiNo
													aprobo1 <- Falso;
												FinSi
											SiNo
												Escribir "Solo se permite valores en el rango del 0 al 100";
											FinSi
										SiNo
											SI inputIdent = identificacion8 Entonces
												Escribir "Ingrese la nota entre el 0 al 100, del estudiante : ", nombreCompleto8; 
												Leer inputPuntaje;
												
												Limpiar Pantalla;
												SI inputPuntaje > 0 y inputPuntaje <= 100 Entonces
													puntaje8 <- inputPuntaje;
													
													SI puntaje8 >= 80 Entonces
														aprobo8 <- Verdadero;
													SiNo
														aprobo8 <- Falso;
													FinSi
												SiNo
													Escribir "Solo se permite valores en el rango del 0 al 100";
												FinSi
											SiNo
												Escribir "No se encuentro ese numero de identificación";
											FinSi
										FinSi
									FinSi
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
		FinSegun
		
	Hasta Que opcion = 4
FinProceso

// Funcion busca la identificacion y valida la contraseña del usuario en un arreglo bidimensional y retorna el indice(posicion)
SubProceso posicion <- buscar_cuenta ( cuentas, cont )
	Definir posicion, indice Como Entero;
	Definir inputCuenta, codigo Como Caracter;
	
	Escribir "Ingrese su identificacion";
	Leer inputCuenta;
	
	posicion <- - 1;
	
	Para indice <- 0 Hasta cont-1 Con Paso 1 Hacer
		SI inputCuenta = cuentas[indice,0] Entonces
			Escribir "Ingrese su contraseña";
			Leer codigo;
			SI codigo = cuentas[indice,4] Entonces
				posicion <- indice;
			sino
				Escribir "Contraseña incorrecta";
			FinSi
		FinSi
	FinPara
	
FinSubProceso

SubProceso solicitud_datos ( nombreCompleto Por Referencia, identificacion Por Referencia, direccion Por Referencia, celular Por Referencia, codigo Por Referencia )
	
	Escribir "Nombre completo";
	Leer nombreCompleto;
	Escribir "Identificación";
	Leer identificacion;
	Escribir "Dirección";
	Leer direccion;
	Escribir "Celular";
	Leer celular;
	Escribir "Contraseña";
	Leer codigo;
	
FinSubProceso

Proceso sin_titulo
	
	Definir cuentas, nombreCompleto, identificacion, direccion Como Caracter;
	Definir cont, indice, opcion, celular, codigo Como Entero;
	Definir saldo, inputDinero Como Real;
	
	Dimension cuentas[5,6];
	cont <- 0;
	
	Repetir
		Escribir "Bienvenido a la app el Banco Fiel";
		Escribir "1. Abrir una nueva cuenta";
		Escribir "2. Ingresa a tu cuenta";
		Escribir "3. Salir";
		Leer opcion;
		
		Segun opcion Hacer
			1:
				Escribir "Ingrese sus datos";
				solicitud_datos( nombreCompleto, identificacion, direccion, celular, codigo );
				cuentas[cont,0] <- identificacion;
				cuentas[cont,1] <- nombreCompleto;
				cuentas[cont,2] <- direccion;
				cuentas[cont,3] <- ConvertirATexto(celular);
				cuentas[cont,4] <- ConvertirATexto(codigo);
				cuentas[cont,5] <- "0";
				cont <- cont + 1;
			2:
				indice <- buscar_cuenta( cuentas, cont );
				
				SI indice > -1 Entonces
					Escribir "Bienvenido ", nombreCompleto,  " que operación desea realizar";
					Escribir "1. Ingresar dinero";
					Escribir "2. Consulta de dinero";
					Escribir "3. Retirar dinero";
					Leer opcion;
					
					Segun opcion Hacer
						1:
							Leer inputDinero;
							
							SI inputDinero > 0 Entonces
								saldo <- ConvertirANumero(cuentas[indice,5]);
								saldo <- saldo + inputDinero;
								cuentas[indice,5] <- ConvertirATexto(saldo);
							FinSi
							
						2:
							Escribir "Ingrese su identificacion";
							Escribir cuentas[indice,5];
						3:
							Escribir "¿ Cuanto desea retirar ?";
							Leer inputDinero;
							SI inputDinero > 0 y inputDinero <= ConvertirANumero(cuentas[indice,5]) Entonces
								saldo <- ConvertirANumero(cuentas[indice,5]);
								saldo <- saldo - inputDinero;
								cuentas[indice,5] <- ConvertirATexto(saldo);
							FinSi
							
							
					FinSegun
				SiNo
					Escribir "No se encontro la cuentra";
				FinSi
		FinSegun
	
	Hasta Que opcion = 3 
	
	
	
FinProceso

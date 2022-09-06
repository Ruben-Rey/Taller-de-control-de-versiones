Proceso banco
	
	Definir numeroCuenta, inputCodigo, inputCuenta, codigo Como Entero;
	Definir identificacion, numeroCelular, opcion Como Entero;
	Definir cuenta Como Logico;
	Definir saldo, inputDinero Como Entero;
	Definir nombreCompleto, direccion Como Caracter;
	
	
	Escribir "Bienvenido a la app el Banco Fiel";
	Escribir "¿ Tiene una cuenta en Banco Fiel ?";
	Leer cuenta;
	
	nombreCompleto <- "Ismael";
	numeroCuenta <- 1564;
	codigo <- 1234;
	saldo <- 2000;
	
	SI (No cuenta) Entonces
		Escribir "Ingrese sus datos para abrir una cuenta";
		Escribir "Ingrese su nombre completo";
		Leer nombreCompleto;
		Escribir "Ingrese su identificación";
		Leer identificacion;
		Escribir "Ingrese su dirección";
		Leer direccion;
		Escribir "Ingrese su numero de celular";
		Leer numeroCelular;
		Escribir "Ingrese su contraseña";
		Leer codigo;
		numeroCuenta <- 1550;
		Escribir nombreCompleto, ", felicitaciones su cuenta ha sido creada exitosamente, su numero de cuenta es :", numeroCuenta;
	
	FinSi
	
	
	Escribir " ";
	Escribir "Ingrese sus datos para ingresar a su cuenta";
	Escribir "Ingrese su numero de cuenta";
	Leer inputCuenta;
	Escribir "Ingrese su contraseña";
	Leer inputCodigo;
	Limpiar Pantalla;
	
	SI numeroCuenta = inputCuenta y codigo = inputCodigo Entonces
		Escribir "Bienvenido ", nombreCompleto,  " que operación desea realizar";
		Escribir "1. Ingresar dinero";
		Escribir "2. Consulta de dinero";
		Escribir "3. Retirar dinero";
		Leer opcion;
		Limpiar Pantalla;
		
		Segun opcion Hacer
			1:
				Escribir "Digite el monto que desee ingresar";
				Leer inputDinero;
				
				SI inputDinero < 0 Entonces
					Escribir "No puede ingresar cantidades negativas";
				SiNo
					Escribir inputDinero;
					Escribir saldo;
					saldo <- saldo + inputDinero;
					Escribir "Se deposito el dinero a su cuenta, ahora su saldo es :", saldo, " dolares.";
					
				FinSi
			2: 	
				Escribir "Usted cuenta con un saldo de ",saldo, " dolares";
			3:
				Escribir "Digite el monto que desee retirar";
				Leer inputDinero;
				
				SI inputDinero < 0 o inputDinero > saldo  Entonces
					Escribir "Error, no tiene saldo disponible o ingreso una cantidad negativa.";
				SiNo
					saldo <- saldo - inputDinero;
					Escribir "Se retiro ", inputDinero,  " dolares, ahora tiene :", saldo, " dolares en su cuenta.";
					
					
				FinSi 
				
			De Otro Modo:
				Escribir "Opcion incorrecta";
				
		FinSegun
	SiNo
		Escribir "Su contraseña es incorrecta o ingreso mal el numero de cuenta.";
		
	FinSi
	

	
	
	
	
FinProceso

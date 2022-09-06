// Funcion que calcula el IMC y retorna el resultado.
SubProceso imc <- imc_formula ()
	Definir imc, peso, altura Como Real;
	
	Escribir "Ingrese su peso en kilogramos";
	Leer peso;
	Escribir "Ingrese su altura en metros";
	Leer altura;
	
	imc <- peso / (altura * altura);
	imc <- REDON(imc*100)/100;
	
FinSubProceso

// Funcion guarda los datos personales de usuarios
SubProceso solicitud_datos ( nombreCompleto Por Referencia, identificacion Por Referencia)
	Escribir "Ingrese su nombre completo";
	Leer nombreCompleto;
	Escribir "Ingrese su identificación";
	Leer identificacion;
FinSubProceso

Proceso sin_titulo
	Definir nombreCompleto Como Caracter;
	Definir identificacion Como Entero;
	Definir peso Como Real;
	Definir altura Como Real;
	Definir imc Como Real;
	
	solicitud_datos( nombreCompleto, identificacion);
	imc <- imc_formula();
	
	SI imc >= 30  Entonces
		Escribir "Su imc es :", imc, ". Se encuentra en el rango de obesidad";
	SiNo
		SI imc >= 25 y imc < 30 Entonces
			Escribir "Su imc es :", imc, ". Se encuentra en el rango de sobre peso";
		SiNo
			SI imc >= 18.5 y imc < 25 Entonces
				Escribir "Su imc es :", imc, ". Se encuentra en el rango de peso normal";
			SiNo
				SI imc <= 18.5 Entonces
					Escribir "Su imc es :", imc, ". Se encuentra en el rango de bajo de peso";
				FinSi
			FinSi	
		FinSi
	FinSi
	
	
	
FinProceso










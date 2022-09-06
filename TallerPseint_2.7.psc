Proceso Calculo_IMC
	
	Definir nombreCompleto Como Caracter;
	Definir identificacion Como Entero;
	Definir peso Como Real;
	Definir altura Como Real;
	Definir imc Como Real;
	
		
	Escribir "Aplicación de Indice de masa corporal";
	
	Escribir "Ingrese su nombre completo";
	Leer nombreCompleto;
	Escribir "Ingrese su identificación";
	Leer identificacion;
	Escribir "Ingrese su peso en kilogramos";
	Leer peso;
	Escribir "Ingrese su altura en metros";
	Leer altura;
	
	imc <- peso / (altura * altura);
	imc <- REDON(imc*100)/100;
	Escribir imc;
	
	Limpiar Pantalla;
	
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

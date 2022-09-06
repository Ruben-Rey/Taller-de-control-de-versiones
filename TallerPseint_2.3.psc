Proceso primeraApp
	
	Definir nombreCompleto Como Caracter;
	Definir edad Como Entero;
	
	Escribir "Ingrese su nombre completo";
	Leer nombreCompleto;
	
	Escribir "Ingrese su edad";
	Leer edad;
	
	Si ( edad >= 18 ) Entonces
		Escribir nombreCompleto, " usted es mayor de edad, por lo tanto puede entrar a la fiesta.";	
	SiNo
		Escribir nombreCompleto, " usted es menor de edad, por lo tanto, no puede entrar a la fiesta, por favor devuélvase a su casa.";
	FinSi
	
	
	
	
FinProceso

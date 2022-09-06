// Funcion si es mayor de edad
SubProceso menorDeEdad ( edad )
	SI edad < 18 Entonces
		Escribir "Usted aún es un niño(a)";
	FinSi
FinSubProceso


Proceso sin_titulo
	
	Definir edad Como Entero;
	
	Escribir "Ingrese la edad";
	Leer edad;
	menorDeEdad(edad);
	
	
FinProceso

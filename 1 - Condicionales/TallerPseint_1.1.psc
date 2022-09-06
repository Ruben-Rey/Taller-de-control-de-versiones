
// Funcion si es mayor de edad
SubProceso mayorDeEdad ( edad )
	SI edad >= 18 Entonces
		Escribir "Usted es mayor de edad";
	FinSi
FinSubProceso

Proceso sin_titulo
	Definir edad Como Entero;
	
	Escribir "Ingrese la edad";
	Leer edad;
	mayorDeEdad(edad);
	
FinProceso

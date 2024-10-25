Proceso sum_pos
	Definir n, r Como Real;
	Definir i Como Entero;
	i<-0;
	Mientras i < 10
		Escribir Sin Saltar "Número: ";
		Leer n;
		Si n <= 0 Entonces
			r<-r+n;
		FinSi
		i<-i+1;
	FinMientras
	Imprimir "Suma de los números positivos: ", r;
FinProceso

Proceso cont_mult3
	Definir i, cont Como Entero;
	i<-1;
	cont<-0;
	Mientras i <= 100
		Si i mod 3 == 0 Entonces
			Escribir i;
			cont <-cont+1;
		FinSi
		i<-i+1;
	FinMientras
	Escribir "Total de multiplos de 3: ", cont;
FinProceso

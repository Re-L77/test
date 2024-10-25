Proceso prom_num
	Definir n_pr, suma Como Real;
	Definir i, n Como Entero;
	i<-1;
	suma<-0;
	Escribir "Cantidad de números a promediar: ";
	Leer n_pr;
	
	Mientras i <= n_pr Hacer
		Escribir Sin Saltar "Número: #", i, " : ";
		Leer n;
		suma<-suma+n;
		i<-i+1;
	FinMientras
	
	Escribir "Promedio de ", n_pr, " números: ", suma/n_pr;
FinProceso
Proceso sum_cua_pares
	Definir i, sum Como Entero;
	i<-0;
	sum<-0;
	Mientras i <= 100
		Si i mod 2 == 0 Entonces
			sum<-sum+i^2;
		FinSi
		i<-i+1;
	FinMientras
	Escribir "Suma de cuadrados de pares entre [1-100]: ", sum;
FinProceso

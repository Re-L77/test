Proceso sumatoria_1
	Definir sum Como Real;
	Definir f, i, n, x Como Entero;
	sum<-0;
	i <- 1;
	f <- 1;
	Escribir Sin Saltar "Límite: ";
	Leer x;
	Si x <= 0 Entonces
		Escribir "Error, agrega un valor valido.";
	SiNo
		Para n<-1 Hasta x Con Paso 1 Hacer
			f<-1;
			fact(n, i, f);
			sum<- sum + 10^n/f;
		Fin Para
		Imprimir "Sumatoria: ", sum;
	FinSi
FinProceso

SubProceso fact (x, i Por Valor, f Por Referencia)
	Mientras i <= x
		f<-f*i;
		i<-i+1;
	FinMientras
FinSubProceso
	
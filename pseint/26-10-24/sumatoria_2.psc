Proceso sumatoria_2
	Definir sum Como Real;
	Definir n, x Como Entero;
	sum<-0;
	Escribir Sin Saltar "Límite: ";
	Leer x;
	Si x <= 0 Entonces
		Escribir "Error, agrega un valor valido.";
	SiNo
		Para n<-1 Hasta x Con Paso 1 Hacer
			sum<- sum + (n/(2*n+1))^n;
		Fin Para
		Imprimir "Sumatoria: ", sum;
	FinSi
FinProceso

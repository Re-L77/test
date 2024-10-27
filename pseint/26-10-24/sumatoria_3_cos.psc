Proceso sumatoria_3_cos
	Definir sum, cs Como Real;
	Definir n, x Como Entero;
	cs<-0;
	sum<-0;
	Escribir Sin Saltar "Límite: ";
	Leer x;
	Si x <= 0 Entonces
		Escribir "Error, agrega un valor valido.";
	SiNo
		Para n<-1 Hasta x Con Paso 1 Hacer
			cosec(1/2,cs);
			sum<- sum + 1/2 * cs * (2 * sen(1/2 * pi / 180 ) * sen(n * pi / 180) );
			cs<-0;
		Fin Para
		Imprimir "Sumatoria: ", sum;
	FinSi
FinProceso

SubProceso cosec (an, cs Por Referencia)
    Si sen(an*PI/180) = 0 Entonces
        Escribir "Error: La cosecante no está definida para este ángulo: " , an;
    SiNo
        cs <- 1 / sen(an*PI/180);
    FinSi
FinSubProceso
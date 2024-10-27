Proceso Bloque3
	Definir f, i, n, x, opc, an Como Entero;
	Definir sum, cs Como Real;
	i <- 1;
	sum<-0;
	cs<-0;
	Escribir "Sumatoria de n=1 hasta x de las siguientes operaciones:";
	Escribir "1.-  10^n/n!";
	Escribir "2.-  (n/(2*n+1))^n";
	Escribir "3.-  1/2 * cs * (2 * sen(1/2 * pi / 180 ) * sen(n * pi / 180) )";
	Escribir "4.-  (2*n+Raiz(n))/(n^3+Raiz(n))";
	Escribir "5.-  1/n =1+1/1+1/2+1/3+1/4+1/5+1/6+1/7+1/8";
	Escribir "6.-  1 / ((n + 1) * Raiz(n) * n * Raiz(n + 1))";
	Escribir "7.-  Raiz(n)/(n^2+1)";
	Escribir "8.-  1 / ((3*n+1)*(3*n+4))";
	
	
	Escribir Sin Saltar "Elije una opción: ";
	Leer opc;
	Si opc <= 0 O opc > 8 Entonces
		Escribir "Error, agrega una opción valida.";
	SiNo
		Limpiar Pantalla;
		Escribir Sin Saltar "Límite: ";
		Leer x;
		Si x <= 0 Entonces
			Escribir "Error, agrega un valor valido.";
		SiNo
			Limpiar Pantalla;
			Segun opc Hacer
				1:
					Escribir "---- Opcion 1 ----";
					Escribir "Sumatoria de n=1 hasta n=", x, ": ";
					f <- 1;
					Para n<-1 Hasta x Con Paso 1 Hacer
						f<-1;
						fact(n, i, f);
						sum<- sum + 10^n/f;
					FinPara
					Imprimir "Resultado: ", sum;
				2:
					Escribir "---- Opcion 2 ----";
					Escribir "Sumatoria de n=1 hasta n=", x, ": ";
					Para n<-1 Hasta x Con Paso 1 Hacer
						sum<- sum + (n/(2*n+1))^n;
					Fin Para
					Imprimir "Resultado: ", sum;
				3:
					Escribir "---- Opcion 3 ----";
					Escribir "Sumatoria de n=1 hasta n=", x, ": ";
					Para n<-1 Hasta x Con Paso 1 Hacer
						cosec(1/2,cs);
						sum<- sum + 1/2 * cs * (2 * sen(1/2 * pi / 180 ) * sen(n * pi / 180) );
						cs<-0;
					Fin Para
					Imprimir "Resultado: ", sum;
				4:
					Escribir "---- Opcion 4 ----";
					Escribir "Sumatoria de n=1 hasta n=", x, ": ";
					Para n<-1 Hasta x Con Paso 1 Hacer
						sum<- sum + (2*n+Raiz(n))/(n^3+Raiz(n));
					Fin Para
					Imprimir "Resultado: ", sum;
				5:
					Escribir "---- Opcion 5 ----";
					Escribir "Dado que la sumatoria es divergente, entonces.";
					Escribir "La sumatoria estimada de n=1 hasta n=", x, " es: ";
					Para n<-1 Hasta x Con Paso 1 Hacer
						sum<- sum + 1/n;
					Fin Para
					Imprimir "Resultado: ", sum;
				6:
					Escribir "---- Opcion 6 ----";
					Escribir "Sumatoria de n=1 hasta n=", x, ": ";
					Para n<-1 Hasta x Con Paso 1 Hacer
						sum<- sum  + 1 / ((n + 1) * Raiz(n) * n * Raiz(n + 1));
					Fin Para
					Imprimir "Resultado: ", sum;
				7:
					Escribir "---- Opcion 7 ----";
					Escribir "Sumatoria de n=1 hasta n=", x, ": ";
					Para n<-1 Hasta x Con Paso 1 Hacer
						sum<- sum + Raiz(n)/(n^2+1);
					Fin Para
					Imprimir "Resultado: ", sum;
				8:
					Escribir "---- Opcion 8 ----";
					Escribir "Sumatoria de n=1 hasta n=", x, ": ";
					Para n<-1 Hasta x Con Paso 1 Hacer
						sum<- sum + 1 / ((3*n+1)*(3*n+4));
					Fin Para
					Imprimir "Resultado: ", sum;
			Fin Segun
		FinSi
	FinSi
FinProceso

SubProceso fact (x, i Por Valor, f Por Referencia)
	Mientras i <= x
		f<-f*i;
		i<-i+1;
	FinMientras
FinSubProceso

SubProceso cosec (an, cs Por Referencia)
    Si sen(an*PI/180) = 0 Entonces
        Escribir "Error: La cosecante no está definida para este ángulo: " , an;
    SiNo
        cs <- 1 / sen(an*PI/180);
    FinSi
FinSubProceso
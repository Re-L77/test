SubProceso uno(x1, x2, yy1, yy2)
	Definir r Como Real;
	Escribir "Operación 1";
	r<-RC((x2 - x1)^2 + (yy2 - yy1)^2);
	Escribir "Resultado: ", r;
	Escribir "------------------------------------";
FinSubProceso

SubProceso dos(x1, x2, yy1, yy2)
	Definir r Como Real;
	Escribir "Operación 2";
	r <- (yy2 - yy1) / (x2 - x1);
	Escribir "Resultado: ", r;
	Escribir "------------------------------------";
FinSubProceso

SubProceso tres(rad)
	Definir r Como Real;
	Escribir "Operación 3";
	r <- 4 * PI * rad ^ 3 / 3;
	Escribir "Resultado: ", r;
	Escribir "------------------------------------";
FinSubProceso

SubProceso cuatro(v1, v2, x)
	Definir r, xradianes  Como Real;
	Escribir "Operación 4";
	// Convertir el ángulo de grados a radianes:
	xradianes <- x * Pi / 180;
	r <- Raiz(v1^2 + v2^2 - 2 * v1 * v2 * Cos(xradianes));
	Escribir "Resultado: ", r;
	Escribir "------------------------------------";
FinSubProceso

SubProceso cinco(a, b, c)
	Definir r Como Real;
	Escribir "Operación 5";
	r <- ACos((b ^ 2 + c ^ 2 - a ^ 2) / (2 * b * c));
	Escribir "Resultado: ", r;
	Escribir "------------------------------------";
FinSubProceso

Proceso bloque_1_Extras
	uno(9, 6, 3, 7);
	dos(12, 10, 7, 6);
	tres(6);
	cuatro(2, 5, 1.1);
	cinco(5, 6, 7);
FinProceso
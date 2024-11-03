Proceso men_for
	Definir opc, i, num, cont, act, act2 Como Entero;
	Repetir
		Limpiar Pantalla;
		Escribir "Secuencias";
		Escribir "1-  1, 4, 7, 10, 13, 16, 19, 22, 25, ...";
		Escribir "2-  1, 3, 6, 10, 15, 21, 28, 36, 45, ...";
		Escribir "3-  1, 4, 9, 16, 25, 36, 49, 64, 81, ...";
		Escribir "4-  0, 1, 1, 2, 3, 5, 8, 13, 21, 34, ...";
		Escribir "5-  2, 2, 4, 8, 8, ...";
		Escribir "6- Salir";
		Escribir "";
		Escribir Sin Saltar "Elige una opción";
		Leer opc;
		Si opc <= 0 O opc > 7 Entonces
			Escribir "ERROR - Elige una opción correcta.";
			Escribir "[Presiona una tecla para continuar...]";
			Esperar Tecla;
		SiNo
			Si opc = 6 Entonces
				Limpiar Pantalla;
				Escribir "Fin.";
			SiNo
				Escribir Sin Saltar "n: ";
				Leer num;
				Si num >= 0 Entonces
					Segun opc Hacer
						1:
							cont<-1;
							Para i<-1 Hasta num Con Paso 3 Hacer
								Imprimir Sin Saltar i, " ";
								cont<-cont + 1;
							Fin Para
						2:
							act<-1;
							cont<-2;
							Para i<-1 Hasta num Con Paso 1 Hacer
								Imprimir Sin Saltar act " ";
								act <- act + cont;
								cont<-cont + 1;
							Fin Para
						3:
							act<-1;
							cont<-3;
							Para i<-1 Hasta num Con Paso 1 Hacer
								Imprimir Sin Saltar act " ";
								act <- act + cont;
								cont<-cont + 2;
							Fin Para
						4:
							act<-0;
							act2<-1;
							Para i<-1 Hasta num Hacer
								Si i = 1 Entonces
									Escribir Sin Saltar act, " ";
								SiNo
									Si i = 2 Entonces
										Escribir Sin Saltar act2, " ";
									SiNo
										cont <- act + act2;
										Imprimir Sin Saltar cont, " ";
										act<-act2;
										act2<-cont;
									FinSi
								FinSi
							Fin Para
						5:
							act<-2;
							cont<-2;
							Para i<-1 Hasta num Con Paso 1 Hacer
								Imprimir Sin Saltar act, " ";
								Imprimir Sin Saltar act, " ";
								act<-act+cont;
								cont<-cont+2;
							Fin Para
					FinSegun
				SiNo
					Escribir "ERROR - Límite no permitido.";
				FinSi
				Escribir "";
				Escribir "[Presiona una tecla para continuar...]";
				Esperar Tecla;
				Limpiar Pantalla;
			FinSi
		FinSi
	Hasta Que opc = 6;
FinProceso

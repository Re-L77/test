Proceso men_while
	Definir opc, i, num, cont, aux, sumN, sumP, contN, contP Como Entero;
	Definir s1, s2, s3 Como Entero;
	Repetir
		Limpiar Pantalla;
		Escribir "Opci�n";
		Escribir "1-  Se desea leer por teclado a una serie de n�meros hasta obtener un n�mero inferior a 100.";
		Escribir "2-  Leer sucesivamente n�meros del teclado hasta que aparezca un n�mero comprendido entre 1 y 5.";
		Escribir "3-  Calcular el valor m�ximo de una serie de 100 n�meros.";
		Escribir "4-  Se desea conocer una serie de datos de una empresa con 50 empleados:";
		Escribir "5-  Leer 100 n�meros. Determinar la media de los n�meros positivos y la media de los n�meros negativos.";
		Escribir "6-  Imprimir todos los n�meros primos entre 2 y 1.000 inclusive";
		Escribir "7-  Salir";
		Escribir Sin Saltar "Elige una opci�n";
		Leer opc;
		Limpiar Pantalla;
		Si opc <= 0 O opc > 7 Entonces
			Escribir "ERROR - Elige una opci�n correcta.";
			Escribir "[Presiona una tecla para continuar...]";
			Esperar Tecla;
		SiNo
			Si opc = 7 Entonces
				Escribir "Fin.";
			SiNo
					Segun opc Hacer
						1:
							Escribir "1-  Se desea leer por teclado a una serie de n�meros hasta obtener un n�mero inferior a 100.";
							Repetir
								Escribir Sin Saltar "N�mero: ";
								Leer num;
							Hasta Que num < 100
						2:
							Escribir "2-  Leer sucesivamente n�meros del teclado hasta que aparezca un n�mero comprendido entre 1 y 5.";
							Repetir
								Escribir Sin Saltar "N�mero: ";
								Leer num;
							Hasta Que num <= 5 && num >= 1
						3:
							i<-1;
							aux<-0;
							Escribir "3-  Calcular el valor m�ximo de una serie de 100 n�meros.";
							Mientras i <= 100 Hacer
								Imprimir Sin Saltar "N�mero #" i ": ";
								Leer num;
								Si num > aux Entonces
									aux<-num;
								FinSi
								i<-i+1;
							FinMientras
							Imprimir "Valor m�ximo " aux ".";
						4:
							i<-1;
							Escribir "4-  Se desea conocer una serie de datos de una empresa con 50 empleados:";
							Escribir "�Cu�ntos empleados ganan m�s de 300.000 pesetas al mes (salarios altos);";
							Escribir "Entre 100.000 y 300.000 pesetas (salarios medios);";
							Escribir "Y menos de 100.000 pesetas (salarios bajos y empleados a tiempo parcial)?";
							
							Mientras i <= 50 Hacer
								Imprimir Sin Saltar "N�mero #" i ": ";
								Leer num;
								Si num <= 0 Entonces
									Escribir "[ERROR] - N�mero invalido.";
								SiNo
									Si num > 300000 Entonces
										s1<-s1+1;
									SiNo
										Si num >= 100000 Y num <= 300000 Entonces
											s2<-s2+1;
										SiNo 
											s3<-s3+1;
										FinSi
									FinSi
								FinSi
								i<-i+1;
							FinMientras
							Imprimir "Salarios altos: " s1;
							Imprimir "Salarios medios: " s2;
							Imprimir "Salarios bajos y empleos a tiempo parcial: " s3;
						5:
							Escribir "5-  Leer 100 n�meros. Determinar la media de los n�meros positivos y la media de los n�meros negativos.";
							i<-1;
							sumN<-0;
							sumP<-0;
							contN<-0;
							contP<-0;
							Mientras i <= 100 Hacer
								Imprimir Sin Saltar "N�mero #" i ": ";
								Leer num;
								Si num < 0 Entonces
									sumN<-sumN+num;
									contN<-contN+1;
								SiNo
									sumP<-sumP+num;
									contP<-contP+1;
								FinSi
								i<-i+1;
							FinMientras
							Si sumP / contP = 0 Entonces
								Imprimir "Media positivos: [Error] - Divisi�n por 0.";
							SiNo
								Imprimir "Media de positivos: " sumP / contP;
							FinSi
							Si sumN / contN = 0 Entonces
								Imprimir "Media negativos: [Error] - Divisi�n por 0.";
							SiNo
								Imprimir "Media de negativos: " sumN / contN;
							FinSi
						6: 
							i<-2;
							Escribir "6- Imprimir todos los n�meros primos entre 2 y 1.000 inclusive";
							Mientras i <= 1000 Hacer
								aux<-1;
								cont<-0;
								Mientras aux <= i Hacer
									Si i mod aux = 0 Entonces
										cont<-cont+1;
									FinSi
									aux<-aux+1;
									Si cont > 2 Entonces
										aux<-i+1;
									FinSi
								FinMientras
								Si cont = 2 Entonces
									Imprimir Sin Saltar i " ";
								FinSi
								i<-i+1;
							FinMientras
					FinSegun
					Escribir "";
					Escribir "[Presiona una tecla para continuar...]";
					Esperar Tecla;
			FinSi
		FinSi
	Hasta Que opc = 7;
FinProceso
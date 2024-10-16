Proceso sum_Num
		Definir num1, num2, opc, oper, i Como Entero;
		Definir num3, num4, res Como Real;
		Para i<-0 Hasta 2 Con Paso 1 Hacer
			Imprimir "1.-Enteros.";
			Imprimir "2.-Decimales.";
			Leer opc;
			Segun opc Hacer
				1:
					Imprimir "1.- Suma.";
					Imprimir "2.- Resta.";
					Imprimir "3.- Multiplicación.";
					Segun opc Hacer
						1:
							Imprimir "Número 1: ";
							Leer num1;
							Imprimir "Número 2: ";
							Leer num2;
							res = res + (num1 + num2);
							Imprimir "Resultado: ", num1 + num2;
						2:
							Imprimir "Número 1: ";
							Leer num1;
							Imprimir "Número 2: ";
							Leer num2;
							res = res + (num1 - num2);
							Imprimir "Resultado: ", num1 - num2;
						3:
							Imprimir "Número 1: ";
							Leer num1;
							Imprimir "Número 2: ";
							Leer num2;
							res = res + (num1 * num2);
							Imprimir "Resultado: ", num1 * num2;
						De Otro Modo:
							Imprimir "Error.";
					Fin Segun
				2:
					Imprimir "1.- Suma.";
					Imprimir "2.- Resta.";
					Imprimir "3.- Multiplicación.";
					Segun opc Hacer
						1:
							Imprimir "Número 1: ";
							Leer num3;
							Imprimir "Número 2: ";
							Leer num4;
							res = res + (num3 + num4);
							Imprimir "Resultado: ", num3 + num4;
						2:
							Imprimir "Número 1: ";
							Leer num3;
							Imprimir "Número 2: ";
							Leer num4;
							res = res + (num3 - num4);
							Imprimir "Resultado: ", num3 - num4;
						3:
							Imprimir "Número 1: ";
							Leer num3;
							Imprimir "Número 2: ";
							Leer num4;
							res = res + (num3 * num4);
							Imprimir "Resultado: ", num3 * num4;
						De Otro Modo:
							Imprimir "Error.";
					Fin Segun
				De Otro Modo:
					Imprimir "Error, opción no valida.";
			Fin Segun
		Fin Para
		Imprimir "Suma total: ", res;
FinProceso

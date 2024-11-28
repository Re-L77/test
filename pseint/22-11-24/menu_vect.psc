Proceso men_f
	Definir opc, vect, vect2, vect3, i, z, cont, cont2 Como Entero;
	Definir x, b, posX, posB Como Entero;
	Definir sumP, prodI, sumPR Como Entero;
	Definir cantP, cantPR, cantI, cantPOS, cantNEG Como Entero;
	prodI<-1;
	cont2<-0;
	opc <- 0;
	Definir nE, vect4, vect5 Como Entero;
	Dimension vect[10], vect2[10], vect3[10];
		Escribir "1.- Cargar 2 vectores, uno con las calificaciones de";  
		Escribir "los estudiantes que reprobaron algoritmos, el segundo con ";
		Escribir "las calificaciones de los estudiantes que reprobaron Java.";
		Escribir "Se pide crear otro arreglo formado por las";
		Escribir "calificaciones de los estudiantes que perdieron ambas materias.";
		Escribir "Mostrar el arreglo resultante.";
		Escribir "-";
		
		Escribir "2.- Elabora un algoritmo que lea un vector de N elementos. ";
		Escribir "Si el número de elementos es par, intercambiar, ";
		Escribir "partiendo de la última posición, el elemento i?ésimo por ";
		Escribir "el elemento inésimo ? 1 y así hasta el primer elemento.";
		Escribir "Si el número de elementos es impar, mostrar un mensaje.";
		Escribir "-";
		
		Escribir "3.- Se tiene un vector de 125 elementos con valores numéricos enteros, realice lo siguiente:";
		Escribir "-";
		
		Escribir "4.- Se tienen 2 vectores de tamaño 20. Hacer un algoritmo que indique ";
		Escribir "si son iguales o diferentes. Los vectores son iguales cuando ";
		Escribir "tienen el mismo valor en todos sus elementos.";
		Escribir "-";
		
		Escribir "5.- Dado un vector A de tamaño N, hallar:";
		Escribir "a. La suma de los números pares";
		Escribir "b. El producto de los números impares";
		Escribir "c. La suma de los números primos";
		Escribir "d. La cantidad de pares, de impares, de primos, de positivos y negativos";
		Escribir "-";
		
		Escribir "6.- Salir";
		Escribir "-";
		Escribir "Elije una opción: ";
		Leer opc;
		Limpiar Pantalla;
		
		Segun opc Hacer
			1:
				cont<-0;
				Escribir "Ejecutando opción 1...";
				Escribir "1.- Cargar 2 vectores, uno con las calificaciones de";  
				Escribir "los estudiantes que reprobaron algoritmos, el segundo con ";
				Escribir "las calificaciones de los estudiantes que reprobaron Java.";
				Escribir "Se pide crear otro arreglo formado por las";
				Escribir "calificaciones de los estudiantes que perdieron ambas materias.";
				Escribir "Mostrar el arreglo resultante.";
				
				Escribir "Algoritmos:";
				Para i<-0 Hasta 9 Hacer
					vect[i]<-Aleatorio(0,5);
					Imprimir " |" vect[i] "| " Sin Saltar;
				FinPara 
				Escribir " ";
				Escribir "Java: ";
				Para i<-0 Hasta 9 Hacer
					vect2[i]<-Aleatorio(0,5);
					Imprimir " |" vect2[i] "| " Sin Saltar;
				FinPara
				Escribir " ";
				
				Escribir "Ambas materias reprobadas:";
				Para i<-0 Hasta 9 Hacer
					Si vect[i] = vect2[i] Entonces
						vect3[cont]<-vect2[i];
						cont<-cont+1;
					FinSi
				FinPara
				
				Para i<-0 Hasta 9 Hacer
					Si i <= cont-1 Entonces
						Imprimir " |" vect3[i] "| " Sin Saltar;
					FinSi
				FinPara
				Escribir " ";
			2:
				cont<-0;
				Escribir "2.- Elabora un algoritmo que lea un vector de N elementos. ";
				Escribir "Si el número de elementos es par, intercambiar, ";
				Escribir "partiendo de la última posición, el elemento i - ésimo por ";
				Escribir "el elemento i- ésimo - 1 y así hasta el primer elemento.";
				Escribir "Si el número de elementos es impar, mostrar un mensaje.";
				
				Escribir "Elementos: ";
				Leer nE;
				Dimension vect4[nE], vect5[nE];
				
				Mientras nE mod 2 <> 0 Hacer
					Escribir "Elementos (Debe ser par): ";
					Leer nE;
				FinMientras
				
				Escribir "Elementos del vector: ";
				Para i<-0 Hasta nE-1 Hacer
					Leer vect4[i];
				FinPara
				Escribir "Original: ";
				Para i<-0 Hasta nE-1 Hacer
					Imprimir " |" vect4[i] "|" Sin Saltar;
				FinPara
				Escribir " ";
				Escribir "Nueva:";
				Para i<-nE-1 Hasta 0 Hacer
					vect5[cont]<-vect4[i];
					cont<-cont +1;
				FinPara
				
				Para i<-0 Hasta nE-1 Hacer
					Imprimir " |" vect5[i] "|" Sin Saltar;
				FinPara
			3:
				Escribir "3.- Se tiene un vector de 125 elementos con valores numéricos enteros, realice lo siguiente:";
				Dimension vect4[125];
				Para i<-0 Hasta 124 Hacer
					vect4[i]<-azar(125);
					Imprimir " |" vect4[i] "|" Sin Saltar;
				FinPara
				Escribir " ";
				
				Escribir Sin Saltar "X: ";
				Leer x;
				
				Escribir Sin Saltar"B: ";
				Leer b;
				
				Para i<-0 Hasta 124 Hacer
					Si vect4[i] == x Entonces
						posX<-i;
					FinSi
				FinPara
				
				Para i<-0 Hasta 124 Hacer
					Si vect4[i] == b Entonces
						posB<-i;
					FinSi
				FinPara
				
				Imprimir "X: " posX, "  B: " posB;
				
				Para i<-0 Hasta 124 Con Paso 1 Hacer
					Si vect4[i] mod 2 <> 0 Entonces
						cont <- cont+1;
					FinSi
				FinPara
				Dimension vect5[cont];
				
				Para i<-0 Hasta 124 Con Paso 1 Hacer
					Si vect4[i] mod 2 <> 0 Entonces
						vect5[cont2]<- vect4[i];
						cont2<-cont2+1;
					FinSi
				FinPara
				
				Escribir "Elementos impares";
				Para i<-0 Hasta cont-1 Hacer
					Imprimir " |" vect5[i] "|" Sin Saltar;
				FinPara
				Escribir " ";
				Escribir "Elementos multiplos de 3";
				Para i<-0 Hasta cont-1 Hacer
					Si vect5[i] mod 3 == 0 Entonces
						Imprimir " |" vect5[i] "|" Sin Saltar;
					FinSi
				FinPara
				
			4:
				Escribir "4.- Se tienen 2 vectores de tamaño 20. Hacer un algoritmo que indique ";
				Escribir "si son iguales o diferentes. Los vectores son iguales cuando ";
				Escribir "tienen el mismo valor en todos sus elementos.";
				Dimension vect4[20], vect5[20];
				
				Para i<-0 Hasta 19 Hacer
					vect4[i]<-azar(20);
					vect5[i]<-azar(20);
				FinPara
				//Para i<-0 Hasta 19 Hacer
				//	vect4[i]<-azar(20);
				//	vect5[i]<-vect4[i];
				//FinPara
				Escribir "Vector 1:";
				Para i<-0 Hasta 19 Hacer
					Imprimir " |" vect4[i] "|" Sin Saltar;
				FinPara
				Escribir " ";
				Escribir "Vector 2:";
				Para i<-0 Hasta 19 Hacer
					Imprimir " |" vect5[i] "|" Sin Saltar;
				FinPara
				
				Para i<-0 Hasta 19 Hacer
					Si vect4[i] = vect5[i] Entonces
						cont<-cont+1;
					FinSi
				FinPara
				Escribir " ";
				Si cont <> 20 Entonces
					Escribir "Son diferentes";
				SiNo
					Escribir "Son iguales";
				FinSi
			5:
				Escribir "5.- Dado un vector A de tamaño N, hallar:";
				Escribir "a. La suma de los números pares";
				Escribir "b. El producto de los números impares";
				Escribir "c. La suma de los números primos";
				Escribir "d. La cantidad de pares, de impares, de primos, de positivos y negativos";
				Escribir "Elementos: ";
				Leer nE;
				Dimension vect4[nE];
				Para i<-0 Hasta nE-1 Hacer
					vect4[i]<-Aleatorio(nE-nE*2,nE);
				FinPara
				
				Para i<-0 Hasta nE-1 Hacer
					Imprimir " |" vect4[i] "|" Sin Saltar;
				FinPara
				Para i<-0 Hasta nE-1 Hacer
					
					Si vect4[i] > 0 Entonces
						
						cont<-0;
						
						Para z<-1 Hasta abs(vect4[i])  Hacer
							Si vect4[i] mod z == 0 Entonces
								cont<-cont+1;
							FinSi
						FinPara
						
						Si cont = 2 Entonces
							sumPR<-sumPR+vect4[i];
							cantPR<-cantPR+1;
						FinSi
						cantPOS<- cantPOS+1;
						
					SiNo
						SI vect4[i] <> 0 Entonces
							cantNEG<- cantNEG+1;
						FinSi
					FinSi
					
					Si vect4[i] mod 2 == 0 Entonces
						sumP <- sumP + vect4[i];
						cantP<-cantP+1;
					SiNo
						prodI<-prodI*vect4[i];
						cantI<-cantI+1;
					FinSi
				FinPara
				Escribir " ";
				Imprimir "Cantidad de positivos: " cantPOS "   Cantidad de negativos: " cantNEG;
				Imprimir "Cantidad de pares: " cantP "   Suma de pares: " sumP;
				Imprimir "Cantidad de impares: " cantI "   Producto de impares: " prodI;
				Imprimir "Cantidad de primos: " cantPR "   Suma de primos: " sumPR;
			6:
				Escribir "Saliendo del programa..."; 
			De Otro Modo:
				Escribir "Error, ingresa una opción válida";
		FinSegun
		Escribir " ";
		Escribir "Presiona una tecla para continuar...";
		Esperar Tecla;
		Limpiar Pantalla;	
FinProceso
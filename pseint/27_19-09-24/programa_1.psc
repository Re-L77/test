Algoritmo programa_1
	Definir num, cont, opc Como Real;
	Escribir 'Número en kilos: ';
	Leer num;
	Para cont<-0 Hasta 2 Con Paso 1 Hacer
		Escribir "Elije la conversión entre : Hectogramos(0), Decagramos(1), Gramos(2), Decigramos(3), Centigramos(4), Miligramos(5)";
		Leer opc;
		Segun opc Hacer
			0:
				Escribir "[", num, "kg] a hectogramos: ", num*10;
			1:
				Escribir "[", num, "kg] a decagramos: ", num*100;
			2:
				Escribir "[", num, "kg] a gramos: ", num*1000;
			3:
				Escribir "[", num, "kg] a decigramos: ", num*10000;
			4:
				Escribir "[", num, "kg] a centigramos: ", num*100000;
			5:
				Escribir "[", num, "kg] a miligramos: ", num*1000000;
			De Otro Modo:
				Escribir "Opción no encontrada";
				Escribir "";
		Fin Segun
	Fin Para
FinAlgoritmo
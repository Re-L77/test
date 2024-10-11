Proceso calculadora_De_Figuras
	Definir opc Como Entero;
	Definir la, apo, ba_Ma, ba_Me, c, d, h, ba, d1, d2, r, area, per Como Real;
	Escribir "1.-Sacar el área y perímetro de un pentágono.";
	Escribir "2.-Sacar el área y perímetro de un hexágono.";
	Escribir "3.-Sacar el área y perímetro del trapecio.";
	Escribir "4.-Sacar el área y perímetro del romboide.";
	Escribir "5.-Sacar el área y perímetro del rombo.";
	Escribir "6.-Sacar el área y perímetro del círculo.";
	Escribir "Selecciona una opción: ";
	Leer opc;
	Segun opc Hacer
		1:
			Escribir "Área y perímetro del pentágono.";
			Escribir "Longitud de lado: ";
			Leer la;
			Escribir "Longitud de apotema: ";
			Leer apo;
			per<- 5 * la;
			area<- per * apo / 2;
			Imprimir "Área: ", area, ", Perímetro: ", per;
		2:
			Escribir "Área y perímetro del hexágono.";
			Escribir "Longitud de lado: ";
			Leer la;
			Escribir "Longitud de apotema: ";
			Leer apo;
			per<- 6 * la;
			area<- per * apo / 2;
			Imprimir "Área: ", area, ", Perímetro: ", per;
		3:
			Escribir "Área y perímetro del trapecio.";
			Escribir "Longitud de lado: ";
			Leer la;
			Escribir "Longitud de base menor: ";
			Leer ba_Me;
			Escribir "Longitud de base mayor: ";
			Leer ba_Ma;
			Escribir "Longitud de la altura: ";
			Leer h;
			per<- la * 2 + ba_Ma + ba_Me;
			area<- ((ba_Ma + ba_Me)/2)*h;
			Imprimir "Área: ", area, ", Perímetro: ", per;
		4:
			Escribir "Área y perímetro del romboide.";
			Escribir "Longitud de lado: ";
			Leer la;
			Escribir "Longitud de base: ";
			Leer ba;
			Escribir "Longitud de la altura: ";
			Leer h;
			per<- 2 *(ba * h);
			area<- ba*h;
			Imprimir "Área: ", area, ", Perímetro: ", per;
		5:
			Escribir "Área y perímetro del rombo.";
			Escribir "Longitud de lado: ";
			Leer la;
			Escribir "Longitud de D1: ";
			Leer d1;
			Escribir "Longitud de D2: ";
			Leer d2;
			per<- 4 * la;
			area<- d1 * d2 / 2;
			Imprimir "Área: ", area, ", Perímetro: ", per;
		6:
			Escribir "Área y perímetro del Círculo.";
			Escribir "Radio: ";
			Leer r;
			per<- 2 * PI * r;
			area<- PI * r^2;
			Imprimir "Área: ", area, ", Perímetro: ", per;
		De Otro Modo:
			Escribir "No existe la opción.";
	FinSegun

FinProceso

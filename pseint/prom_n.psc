Proceso prom_n
	Escribir "Promedio de n calificaciones";
	Definir cal, promedio, suma Como Real;
	Definir i, n Como Entero;
	i<-1;
	suma<-0;
	Escribir "Cantidad de calificaciones a promediar: ";
	Leer n;
	
	Si n < 0 Entonces
		Escribir "Error, valor no admitido;";
	SiNo
		Mientras (i<=n) Hacer
			Escribir "Ingresa la calificación (0 - 10) #",i ": " ;
			Leer cal;
			Si cal >= 0 Y cal <=  10 Entonces
				suma<-suma+cal;
				i<-i+1;
			SiNo
				Escribir "Error, calificación no valida.";
				Escribir "Intentalo de nuevo: ";
			FinSi
		FinMientras
		promedio<-suma/n;
		Escribir "Promedio: ", promedio;
	FinSi
FinProceso
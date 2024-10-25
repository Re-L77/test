Proceso men_1
	Definir opc Como Entero;
	Definir r, r2, t, v, a, b, g, h, res Como Real;
	Escribir "Menú de ecuaciones.";
	Escribir "1.- P  = RT/v-b - a/v^2";
	Escribir "2.- At = PI[g(R+r)+ R^2+er^2]";
	Escribir "3.- V  = 1/3*PI*h(R^2+r^2+R+r)";
	Escribir "4.- P  = a+b+h*(1/sen0 + 1/sen 0)";
	Escribir "Seleccione una opción: ";
	Leer opc;
	Segun opc Hacer
		1:
			Escribir "Escribe el valor de R: ";
			Leer r;
			Escribir "Escribe el valor de T: ";
			Leer t;
			Escribir "Escribe el valor de v: ";
			Leer v;
			Escribir "Escribe el valor de b: ";
			Leer b;
			Escribir "Escribe el valor de a: ";
			Leer a;
			res<-r*t/(v-b)-a/v^2;
		2:
			Escribir "Escribe el valor de g: ";
			Leer g;
			Escribir "Escribe el valor de R: ";
			Leer r2;
			Escribir "Escribe el valor de r: ";
			Leer r;
			res<-PI*(g*(r2+r)+r2^2+r^2);
		3:
			Escribir "Escribe el valor de h: ";
			Leer h;
			Escribir "Escribe el valor de R: ";
			Leer r2;
			Escribir "Escribe el valor de r: ";
			Leer r;
			res<-1/3 * PI * h *(r2^2+r^2+r2*r);
		4:
			Escribir "Escribe el valor de a: ";
			Leer a;
			Escribir "Escribe el valor de b: ";
			Leer b;
			Escribir "Escribe el valor de h: ";
			Leer h;
			Escribir "Escribe el valor de seno en grados: ";
			Leer g;
			res<-a+b+h*(1/sen(g*PI/180)+1/sen(g*PI/180));
		De Otro Modo:
			Imprimir "Opción no admitida";
	Fin Segun
	Imprimir "Resultado: ", res;
FinProceso

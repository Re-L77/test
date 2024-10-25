Proceso mcd
    Definir a, b, resto Como Entero;
    
    Escribir "Introduce el primer número: ";
    Leer a;
    
    Escribir "Introduce el segundo número: ";
    Leer b;
	
    Mientras b <> 0 Hacer
        resto <- a mod b;
        a <- b;
        b <- resto;
    Fin Mientras
	
    Escribir "El máximo común divisor de los dos números es: ", a;
Fin Proceso

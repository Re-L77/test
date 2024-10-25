Proceso sum_neg
        Definir n, r Como Real;
        Definir i Como Entero;
        i<-0;
        r<-0;
        Mientras i < 3 Hacer
                Escribir "Número: ";
                Leer n;
                Si n < 0 Entonces
                        r<-r+n;
                FinSi
                i<-i+1;
        FinMientras
        Escribir "Suma de los números negativos: ", r;
FinProceso
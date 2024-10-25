Proceso num_primo
    Definir primo, i, cont Como Entero;
    i <- 1;
    cont <- 0;
    Escribir Sin Saltar "Número: ";
    Leer primo;
    
    Mientras i <= primo
        Si primo mod i == 0 Entonces
            cont <- cont + 1;
        Fin Si
        i <- i + 1;
    Fin Mientras
	
    Si cont == 2 Entonces
        Escribir "El número es primo";
    SiNo
        Escribir "El número no es primo";
    Fin Si
Fin Proceso

Algoritmo MatricesConCASE
    Definir opcion, n, m Como Entero;
    Repetir
        Escribir "Menú de opciones:";
        Escribir "1. Crear matriz e imprimir los valores de los vértices.";
        Escribir "2. Verificar si dos matrices tienen el mismo contenido.";
        Escribir "3. Sumar la diagonal principal de una matriz cuadrada.";
        Escribir "4. Sumar las filas y columnas de una matriz.";
        Escribir "5. Crear matriz con * en las dos diagonales.";
        Escribir "6. Crear matriz con * en el recuadro.";
        Escribir "7. Salir.";
        Escribir "Elige una opción:";
        Leer opcion;
		
        Segun opcion Hacer
            Caso 1:
                Escribir "Ingresa el número de filas:";
                Leer n;
                Escribir "Ingresa el número de columnas:";
                Leer m;
				Definir matriz Como Entero;
                Dimension matriz[n, m];
				
                Para i <- 0 Hasta n-1 Hacer
                    Para j <- 0 Hasta m-1 Hacer
                        matriz[i, j] <- Aleatorio(1, 100);
                    Fin Para
                Fin Para
				
				Para i <- 0 Hasta n-1 Hacer
                    Para j <- 0 Hasta m-1 Hacer
                        Imprimir " " matriz[i, j] Sin Saltar;
                    Fin Para
					Escribir " ";
                Fin Para
				Escribir "";
                Escribir "Los valores en los vértices son:";
                Escribir "Superior izquierdo: ", matriz[0, 0];
                Escribir "Superior derecho: ", matriz[0,m-1];
                Escribir "Inferior izquierdo: ", matriz[n-1, 0];
                Escribir "Inferior derecho: ", matriz[n-1, m-1];
		Caso 2:
			Escribir "Ingresa el tamaño de las matrices (n x m):";
			Leer n, m;
			Definir matriz1, matriz2 Como Entero;
			Dimension matriz1[n, m], matriz2[n, m];
			Escribir "Llenando la primera matriz:";
			Para i <- 0 Hasta n-1 Hacer
				Para j <- 0 Hasta m-1 Hacer
					matriz1[i, j] <- Aleatorio(1, 100);
				Fin Para
			Fin Para
			Para i <- 0 Hasta n-1 Hacer
				Para j <- 0 Hasta m-1 Hacer
					Imprimir " " matriz1[i, j] Sin Saltar;
				Fin Para
				Escribir " ";
			Fin Para
			Escribir "";
			
			Escribir "Llenando la segunda matriz:";
			Para i <- 0 Hasta n-1 Hacer
				Para j <- 0 Hasta m-1 Hacer
					matriz2[i, j] <- Aleatorio(1, 100);
				Fin Para
			Fin Para
			
			Para i <- 0 Hasta n-1 Hacer
				Para j <- 0 Hasta m-1 Hacer
					Imprimir " " matriz2[i, j] Sin Saltar;
				Fin Para
				Escribir " ";
			Fin Para
			Escribir "";
			
			SonIguales <- Verdadero;
			Para i <- 0 Hasta n-1 Hacer
				Para j <- 0 Hasta m-1 Hacer
					Si matriz1[i, j] <> matriz2[i, j] Entonces
						SonIguales <- Falso;
					Fin Si
				Fin Para
			Fin Para
			Si SonIguales Entonces
				Escribir "Las matrices tienen el mismo contenido.";
			SiNo
				Escribir "Las matrices NO tienen el mismo contenido.";
			Fin Si
	Caso 3:
		Escribir "Ingresa el tamaño de la matriz cuadrada:";
		Leer n;
		Definir matriz Como Entero;
		Dimension matriz[n, n];
		SumaDiagonal <- 0;
		Para i <- 0 Hasta n-1 Hacer
			Para j <- 0 Hasta n-1 Hacer
				matriz[i, j] <- Aleatorio(1, 100);
				Si i = j Entonces
					SumaDiagonal <- SumaDiagonal + matriz[i, j];
				Fin Si
			Fin Para
		Fin Para
		
		Para i <- 0 Hasta n-1 Hacer
			Para j <- 0 Hasta n-1 Hacer
				Imprimir " " matriz[i, j] Sin Saltar;
			Fin Para
			Escribir " ";
		Fin Para
		Escribir "";
		
		Escribir "La suma de la diagonal principal es: ", SumaDiagonal;
Caso 4:
	Escribir "Ingresa el tamaño de la matriz (n x m):";
	Leer n, m;
	Dimension matriz[n, m];
	Para i <- 0 Hasta n-1 Hacer
		Para j <- 0 Hasta m-1 Hacer
			matriz[i, j] <- Aleatorio(1, 100);
		Fin Para
	Fin Para
	Escribir "Sumando las filas:";
	Para i <- 0 Hasta n-1 Hacer
		Para j <- 0 Hasta m-1 Hacer
			Imprimir " " matriz[i, j] Sin Saltar;
		Fin Para
		Escribir " ";
	Fin Para
	Escribir "";
	Para i <- 0 Hasta n-1 Hacer
		SumaFila <- 0;
		Para j <- 0 Hasta m-1 Hacer
			SumaFila <- SumaFila + matriz[i, j];
		Fin Para
		Escribir "Suma de la fila ", i, ": ", SumaFila;
	Fin Para
	Escribir "Sumando las columnas:";
	Para j <- 0 Hasta m-1 Hacer
		SumaColumna <- 0;
		Para i <- 0 Hasta n-1 Hacer
			SumaColumna <- SumaColumna + matriz[i, j];
		Fin Para
		Escribir "Suma de la columna ", j, ": ", SumaColumna;
	Fin Para
Caso 5:
    Escribir "Ingresa el tamaño de la matriz cuadrada:";
    Leer n;
    Definir matriz7 Como Cadena;
    Dimension matriz7[n, n];
	
	// Llenar la matriz con espacios y marcar las diagonales
    Para i <- 0 Hasta n-1 Hacer
        Para j <- 0 Hasta n-1 Hacer
            Si (i = j) O (i + j = n - 1) Entonces
                matriz7[i, j] <- "*";
            SiNo
                matriz7[i, j] <- " ";
            Fin Si
        Fin Para
    Fin Para
	
    // Imprimir la matriz
    Escribir "La matriz con * en las dos diagonales es:";
    Para i <- 0 Hasta n-1 Hacer
        Para j <- 0 Hasta n-1 Hacer
            Escribir Sin Saltar matriz7[i, j], " ";
        Fin Para
        Escribir ""; // Nueva línea al final de cada fila
    Fin Para
Caso 6:
	
    // Solicitar las dimensiones de la matriz
    Escribir "Ingresa el número de filas de la matriz:";
    Leer n;
    Escribir "Ingresa el número de columnas de la matriz:";
    Leer m;
	
    // Declarar y dimensionar la matriz
    Definir matriz9 Como Cadena;
    Dimension matriz9[n, m];
	
    // Llenar la matriz con * en el recuadro
    Para i <- 0 Hasta n-1 Hacer
        Para j <- 0 Hasta m-1 Hacer
            Si (i = 0) O (i = n-1) O (j = 0) O (j = m-1) Entonces
                matriz9[i, j] <- "*"; // Bordes
            SiNo
                matriz9[i, j] <- " "; // Espacios interiores
            Fin Si
        Fin Para
    Fin Para
	
    // Imprimir la matriz
    Escribir "La matriz con * en el recuadro es:";
    Para i <- 0 Hasta n-1 Hacer
        Para j <- 0 Hasta m-1 Hacer
            Escribir Sin Saltar matriz9[i, j], " ";
        Fin Para
        Escribir ""; // Nueva línea al final de cada fila
    Fin Para
Caso 7:
	Escribir "Saliendo del programa...";
De Otro Modo:
	Escribir "Opción no válida. Intenta de nuevo.";
Fin Segun
Esperar Tecla;
Limpiar Pantalla;
Hasta Que opcion = 7
Fin Algoritmo

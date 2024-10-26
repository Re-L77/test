Algoritmo e
    Definir abecedario Como Caracter;
	Definir i, az Como Entero;
    Dimension abecedario[26];
	az<-Azar(26);
    abecedario[1] = "A";
    abecedario[2] = "B";
    abecedario[3] = "C";
    abecedario[4] = "D";
    abecedario[5] = "E";
    abecedario[6] = "F";
    abecedario[7] = "G";
    abecedario[8] = "H";
    abecedario[9] = "I";
    abecedario[10] = "J";
    abecedario[11] = "K";
    abecedario[12] = "L";
    abecedario[13] = "M";
    abecedario[14] = "N";
    abecedario[15] = "O";
    abecedario[16] = "P";
    abecedario[17] = "Q";
    abecedario[18] = "R";
    abecedario[19] = "S";
    abecedario[20] = "T";
    abecedario[21] = "U";
    abecedario[22] = "V";
    abecedario[23] = "W";
    abecedario[24] = "X";
    abecedario[25] = "Y";
    abecedario[26] = "Z";
	Mientras az = 0
		az<-Azar(26);
	FinMientras
    Imprimir "Letra al azar: ", abecedario[az];
FinAlgoritmo
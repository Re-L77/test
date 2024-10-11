Proceso kilogramos
    Definir kilos, res Como Real;
    Definir opc Como Entero;
	
    Escribir "Ingresa el peso en kilogramos: ";
    Leer kilos;
	
    Escribir "Elige el tipo de conversión:";
    Escribir "1. Hectogramos (hg)";
    Escribir "2. Decagramos (dag)";
    Escribir "3. Gramos (g)";
    Escribir "4. Decigramos (dg)";
    Escribir "5. Centigramos (cg)";
    Escribir "6. Miligramos (mg)";
    Leer opc;
	
    Segun opc Hacer
        Caso 1:
            res = kilos * 10;
            Escribir kilos, " kilogramos son ", res, " hectogramos.";
        Caso 2:
            res = kilos * 100;
            Escribir kilos, " kilogramos son ", res, " decagramos.";
        Caso 3:
            res = kilos * 1000; 
            Escribir kilos, " kilogramos son ", res, " gramos.";
        Caso 4:
            res = kilos * 10000; 
            Escribir kilos, " kilogramos son ", res, " decigramos.";
        Caso 5:
            res = kilos * 100000; 
			Escribir kilos, " kilogramos son ", res, " centigramos.";
        Caso 6:
            res = kilos * 1000000; 
            Escribir kilos, " kilogramos son ", res, " miligramos.";
        De Otro Modo:
            Escribir "Opción no válida.";
    FinSegun;
FinProceso

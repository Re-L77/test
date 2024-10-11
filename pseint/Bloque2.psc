

SubProceso uno(a,b,c)
	Escribir "Programa 1";
	Si a > 0 y b > 0 y c > 0 Entonces
		Escribir "Los números: ",a, ", ",b ,", ",c ," son positivos";
	SiNo
		Si a > 0 Entonces
            Escribir "El número: ", a, " es positivo";
            Si b > 0 Entonces
				Escribir "El número: ", b, " es positivo";
				Si c > 0 Entonces
					Escribir "El número: ", c, " es positivo";
				FinSi
			SiNo
				Si c > 0 Entonces
					Escribir "El número: ", c, " es positivo";
				FinSi
			FinSi
		SiNo
			Si b > 0 Entonces
				Escribir "El número: ", b, " es positivo";
				Si c > 0 Entonces
					Escribir "El número: ", c, " es positivo";
				FinSi
			SiNo
				Si c > 0 Entonces
					Escribir "El número: ", c, " es positivo";
				FinSi
			FinSi
		FinSi
	FinSi
	Escribir "---------------------------";
FinSubProceso

Subproceso dos (a, b ,c)
	Escribir "Programa 2";
	Si a <> b & a <> c & b <> c Entonces
		Escribir "Todos los valores son diferentes";
		Si a > b & a > c Entonces
			Escribir a, " es el mayor";
		SiNo
			Si b > a & b > c Entonces
				Escribir b, " es el mayor";
			SiNo
				Escribir c, " es el mayor";
			FinSi
		FinSi
		
		Si a < b & a < c Entonces
			Escribir a, " es el menor";
		SiNo
			Si b < a & b < c Entonces
				Escribir b, " es el menor";
			SiNo
				Escribir c, " es el menor";
			FinSi
		FinSi
		
	SiNo
		Si a = b & a = c Entonces
			Escribir "Todos los valores son iguales";
		SiNo
			Si a = b Entonces
				Escribir a, " y ", b, " son iguales";
				Si c > a Entonces
					Escribir c, " es mayor";
				SiNo
					Escribir c, " es menor";
				FinSi
			SiNo
				Si a = c Entonces
					Escribir a, " y ", c, " son iguales";
					Si b > a Entonces
						Escribir b, " es mayor";
					SiNo
						Escribir b, " es menor";
					FinSi
				SiNo
					Si b = c Entonces
						Escribir b, " y ", c, " son iguales";
						Si a > b Entonces
							Escribir a, " es mayor";
						SiNo
							Escribir a, " es menor";
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi

	Escribir "---------------------------";
	Escribir "";
FinSubproceso 

SubProceso tres(art)
	Escribir "Programa 3";
	Si art > 3 Entonces
		Escribir "Pago con tarjeta";
	SiNo
		Si art < 0 Entonces
			Escribir "Error";
		SiNo
            Escribir "Pago en efectivo";
		FinSi
	FinSi
	Escribir "---------------------------";
	Escribir "";
FinSubproceso

Subproceso cuatro(a,b,c)
	Escribir "Programa 4";
	Si a <> b & a <> c & b <> c Entonces
        Si a < b & a < c Entonces
            Escribir a, " es el menor número";
        SiNo
            Si b < a & b < c Entonces
                Escribir b, " es el menor número";
            SiNo
                Escribir c, " es el menor número";
            FinSi
        FinSi
    SiNo
        // Si todos son iguales
        Si a = b & a = c Entonces
            Escribir "Los tres números son iguales";
        SiNo
            // Casos en que dos números son iguales
            Si a = b Entonces
                Si c > a Entonces
                    Escribir a, " y ", b, " son iguales, y ", c, " es el mayor";
                SiNo
                    Escribir c, " es el menor número";
                FinSi
            SiNo
                Si a = c Entonces
                    Si b > a Entonces
                        Escribir a, " y ", c, " son iguales, y ", b, " es el mayor";
                    SiNo
                        Escribir b, " es el menor número";
                    FinSi
                SiNo
                    Si b = c Entonces
                        Si a > b Entonces
                            Escribir b, " y ", c, " son iguales, y ", a, " es el mayor";
                        SiNo
                            Escribir a, " es el menor número";
                        FinSi
                    FinSi
                FinSi
            FinSi
        FinSi
    FinSi
	Escribir "Suma: ", a + b + c;
	Escribir "---------------------------";
	Escribir "";
FinSubproceso

SubProceso cinco (hrs, tar)
	Escribir "Programa 5";
	Si hrs < 0 Entonces
		Escribir "error";
	SiNo
		Si hrs > 40 Entonces 
			Escribir "Sueldo: ", (hrs * tar) * 1.50;
		SiNo
            Escribir "Sueldo: ", hrs * tar;
		FinSi
	FinSi
	Escribir "---------------------------";
	Escribir "";
FinSubProceso

SubProceso seis (a, b)
	Escribir "Programa 6";
	Si a = b Entonces
		Escribir a, " y ", b " son iguales";
		Imprimir "Resultado: ", a mod b;
	SiNo
		Si a > b Entonces
			Escribir a, " es mayor ", b;
			Imprimir "Resultado: ", a mod b;
		SiNo
			Escribir b, " es mayor ", a;
			Imprimir "Resultado: ", b mod a;
		FinSi
	FinSi
	Escribir "---------------------------";
	Escribir "";
FinSubProceso

SubProceso siete(a)
	Escribir "Programa 7";
	Si a mod 2 = 0 Entonces
		Escribir "El número ",a , " es PAR";
	SiNo
		Escribir "El número ",a ," es NON";
	FinSi
	Escribir "---------------------------";
	Escribir "";
FinSubProceso

SubProceso ocho(cal)
	Escribir "Programa 8";
	Si cal < 0 Entonces
		Escribir "Error";
	SiNo
		Si cal >= 90 Entonces
			Escribir "Excelente";
		SiNo
			Si cal >= 70 Entonces
				Escribir "Aprobado";
			SiNo
				Escribir "Reprobado";
			FinSi
		FinSi
	FinSi
	Escribir "---------------------------";
	Escribir "";
FinSubProceso

SubProceso nueve(mon) 
	Escribir "Programa 9";
	Si mon < 0 Entonces
		Escribir "Error";
	SiNo
		Si mon >= 1000 Entonces
			Imprimir "Total con descuento de 10%: ", mon - mon * .10;
		SiNo
			Si mon > 500 Entonces
				Imprimir "Total con descuento de 5%: ", mon - mon * .05;
			SiNo
				Si mon <= 500 Entonces
					Escribir "Total sin descuento: ", mon;
				FinSi
			FinSi
		FinSi
	FinSi
	Escribir "---------------------------";
	Escribir "";
FinSubProceso

SubProceso diez(s) 
	Escribir "Programa 10";
	Si s < 0 Entonces
		Escribir "Error";
	SiNo
		Si s > 10000 Entonces
			Imprimir "30% de tasa de impuestos a pagar por salario de ", s, " : " s * .30;
		SiNo
			Si s >= 5000 Entonces
				Imprimir "20% de tasa de impuestos a pagar por salario de ", s, " : " s * .20;
			SiNo
				Imprimir "10% de tasa de impuestos a pagar por salario de ", s, " : " s * .10;
			FinSi
		FinSi
	FinSi
	Escribir "---------------------------";
	Escribir "";
FinSubProceso


Proceso Bloque2
	uno(-5, -5, 2);
	dos(1,2,3);
	tres(-2);
	cuatro(12, 12, 1);
	cinco(50, 20);
	seis(1, 2);
	siete(2);
	ocho(2);
	nueve(500);
	diez(10001);
FinProceso
Proceso calcular_Sueldo
	// Definir variables
	Definir sueldo_base, sueldo_final, anios_en_empresa Como Real;
	
	// Asignar el sueldo base anual
	sueldo_base <- 45500;
	
	// Solicitar al usuario los años que lleva en la empresa
	Escribir "Ingrese los años que lleva el trabajador en la empresa: ";
	Leer anios_en_empresa;
	
	// Calcular el aumento basado en los años de antigüedad
	Si anios_en_empresa > 10 Entonces
		// Aumento del 10%
		sueldo_final <- sueldo_base * 1.10;
	Sino
		Si anios_en_empresa > 5 Entonces
			// Aumento del 7%
			sueldo_final <- sueldo_base * 1.07;
		Sino
			Si anios_en_empresa > 3 Entonces
				// Aumento del 5%
				sueldo_final <- sueldo_base * 1.05;
			Sino
				// Aumento del 3%
				sueldo_final <- sueldo_base * 1.03;
			FinSi
		FinSi
	FinSi
	
	// Mostrar el sueldo final mensual
	Escribir "El sueldo mensual correspondiente es: ", sueldo_final/12;
	
FinProceso
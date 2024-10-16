Proceso anemia
	Definir edad, opc Como Entero;
	Definir hemo Como Real;
	Definir sex, anem Como Caracter;
	
	Escribir "Porcentaje de hemoglobina: ";
	Leer hemo;
	Escribir "Sexo (h = hombre, m = mujer): ";
	Leer sex;
	
	Si sex <> "h" & sex <> "m" & sex <> "H" & sex <> "M" Entonces
		Imprimir "Sexo no definido";
	SiNo
		Escribir "Elije entre:";
		Escribir "1.- Edad en meses (1,12)";
		Escribir "2.- En años";
		Leer opc;
		Segun opc Hacer
			1:
				Escribir "Edad en meses (1-12): ";
				Leer edad;
				
				Segun edad Hacer
					0 O edad < 1:
						Si hemo >= 13 Y hemo <= 26 Entonces
							anem<-"negativo";
						SiNo
							anem<-"positivo";
						FinSi
					edad >= 1 y edad < 6:
						Si hemo >= 10 Y hemo <= 18 Entonces
							anem<-"negativo";
						SiNo
							anem<-"positivo";
						FinSi
					edad >= 6 Y edad < 12:
						Si hemo >= 11 Y hemo <= 15 Entonces
							anem<-"negativo";
						SiNo
							anem<-"positivo";
						FinSi
						De Otro Modo:
							Escribir "Error, opción invalida";
				FinSegun
			2:
				Escribir "Edad en años: ";
				Leer edad;
				
				Segun edad Hacer
					edad >= 1 Y edad < 5:
						Si hemo >= 11.5 Y hemo <= 15 Entonces
							anem<-"negativo";
						SiNo
							anem<-"positivo";
						FinSi
					edad >= 5 y edad < 10:
						Si hemo >= 12.6 Y hemo <= 15.5 Entonces
							anem<-"negativo";
						SiNo
							anem<-"positivo";
						FinSi
					edad >= 10 Y edad < 15:
						Si hemo >= 13 Y hemo <= 15.5 Entonces
							anem<-"negativo";
						SiNo
							anem<-"positivo";
						FinSi
					edad = 15:
						Si sex = "h" O sex = "H" Entonces
							Si hemo >= 12 y hemo <= 16 Entonces
								anem<-"negativo";
							SiNo
								anem<-"positivo";
							FinSi
						SiNo
							Si sex = "m" O sex = "M" Entonces
								Si hemo >= 14 y hemo <= 18 Entonces
									anem<-"negativo";
								SiNo
									anem<-"positivo";
								FinSi
							SiNo
								Imprimir "Error";
							FinSi
						FinSi
					De Otro Modo:
						Escribir "Error, opción invalida";
				FinSegun
			De Otro Modo:
				Escribir "Opción invalida";
		FinSegun
	FinSi
	Imprimir "Estatus de anemia: ",anem;
FinProceso

Proceso VISSOR_Simulacion_1
    // Variables
    Definir opc, id_dispositivo, accion, i Como Entero; // Variables de control y para opciones del men�
    Definir dispositivos Como Caracter; // Declaramos que la matriz ser� de tipo car�cter
    Dimension dispositivos[10, 3]; // Matriz de 10 filas y 3 columnas para los datos de dispositivos
    Definir nombre, tipo Como Cadena; // Para almacenar temporalmente nombre y tipo de dispositivo
    Definir tipoValido, nombreValido Como Logico; // Banderas para validar entradas
    Definir opcionTipo Como Entero; // Variable para seleccionar el tipo de dispositivo
	
    // Inicializar dispositivos con valores predeterminados
    Para i <- 0 Hasta 9 Hacer
        dispositivos[i, 0] <- "Dispositivo_" + ConvertirATexto(i); // Nombre del dispositivo
        dispositivos[i, 1] <- "No definido"; // Estado inicial
        dispositivos[i, 2] <- "No definido"; // Tipo inicial
    Fin Para
	
    // Men� principal
    Repetir
        LimpiarPantalla; // Limpia la pantalla antes de mostrar el men�
        Escribir "===================================== Sistema VISSOR =====================================";
        Escribir Sin Saltar "| Registrar dispositivo ";
        Escribir Sin Saltar "| Monitorear dispositivos ";
        Escribir Sin Saltar "| Gestionar dispositivo ";
        Escribir Sin Saltar "|    Salir    | ";
        Escribir " ";
        Escribir Sin Saltar "           [1]";
        Escribir Sin Saltar "                      [2]";
        Escribir Sin Saltar "                      [3]";
        Escribir Sin Saltar "                [4]";
        Escribir " ";
        Leer opc; // Lee la opci�n seleccionada por el usuario
        
        Segun opc Hacer
            1: // Opci�n 1: Registrar un dispositivo
                Escribir "=== Registro de dispositivos ===";
                Escribir "Ingrese el ID del dispositivo (0-9): ";
                Leer id_dispositivo;
                
                Si id_dispositivo >= 0 Y id_dispositivo <= 9 Entonces
                    // Validar nombre del dispositivo
                    Repetir
                        Escribir "Ingrese el nombre del dispositivo: ";
                        Leer nombre;
                        nombreValido <- (nombre <> ""); // El nombre no puede estar vac�o
                        Si No nombreValido Entonces
                            Escribir "El nombre no puede estar vac�o. Intente de nuevo.";
                        Fin Si;
                    Hasta Que nombreValido;
					
                    // Validar tipo de dispositivo
                    Repetir
                        Escribir "Seleccione el tipo del dispositivo:";
                        Escribir "1. Sensor";
                        Escribir "2. C�mara";
                        Escribir "3. Actuador";
                        Escribir "4. Controlador";
                        Escribir "5. Alarma";
                        Escribir "6. Otro";
                        Leer opcionTipo;
						
                        // Validar opci�n y asignar tipo
                        Si opcionTipo >= 1 Y opcionTipo <= 6 Entonces
                            Segun opcionTipo Hacer
                                1: tipo <- "Sensor";
                                2: tipo <- "C�mara";
                                3: tipo <- "Actuador";
                                4: tipo <- "Controlador";
                                5: tipo <- "Alarma";
                                6: // Permite al usuario ingresar un tipo personalizado
                                    Escribir "Ingrese el tipo personalizado: ";
                                    Leer tipo;
                            Fin Segun;
                            tipoValido <- Verdadero;
                        Sino
                            Escribir "Opci�n no v�lida. Intente de nuevo.";
                            tipoValido <- Falso;
                        Fin Si;
                    Hasta Que tipoValido;
					
                    // Registrar datos en la matriz
                    dispositivos[id_dispositivo, 0] <- nombre;
                    dispositivos[id_dispositivo, 2] <- tipo;
                    dispositivos[id_dispositivo, 1] <- "Apagado"; // Estado inicial del dispositivo
					
                    Escribir " ";
                    Escribir "Dispositivo registrado exitosamente.";
                    Escribir " ";
                    Escribir "--------------";
                    Escribir "Presione una tecla para continuar";
                    Esperar Tecla;
                Sino
                    Escribir "ID no v�lido."; // Validaci�n del rango de IDs
                    Esperar Tecla;
                Fin Si;
				
            2: // Opci�n 2: Monitorear dispositivos
                Escribir "=== Monitoreo de dispositivos ===";
                Para i <- 0 Hasta 9 Hacer
                    Escribir "[", i, "] - ", "[", dispositivos[i, 0], "]", "  Tipo: [", dispositivos[i, 2], "] - Estado: [", dispositivos[i, 1], "]";
                Fin Para;
                Escribir " ";
                Escribir "--------------";
                Escribir "Presione una tecla para continuar";
                EsperarTecla;
				
            3: // Opci�n 3: Gestionar dispositivos
                Escribir "=== Gestionar dispositivos ===";
                Escribir "Ingrese el ID del dispositivo a gestionar (0-9): ";
                Leer id_dispositivo;
                Si id_dispositivo >= 0 Y id_dispositivo <= 9 Entonces
                    // Mostrar informaci�n actual del dispositivo
                    Escribir "Dispositivo: ", dispositivos[id_dispositivo, 0];
                    Escribir "Estado actual: ", dispositivos[id_dispositivo, 1];
                    Escribir "Seleccione una acci�n:";
                    Escribir "1. Encender";
                    Escribir "2. Apagar";
                    Escribir "3. Reiniciar";
                    Leer accion;
                    
                    // Realizar acci�n seg�n la opci�n seleccionada
                    Segun accion Hacer
                        Caso 1: dispositivos[id_dispositivo, 1] <- "Encendido";
                        Caso 2: dispositivos[id_dispositivo, 1] <- "Apagado";
                        Caso 3: dispositivos[id_dispositivo, 1] <- "Reiniciando";
                        De Otro Modo:
                            Escribir "Acci�n no v�lida.";
                    Fin Segun;
                    
                    Escribir "";
                    Escribir "Acci�n realizada exitosamente.";
                    Escribir "";
                    Escribir "--------------";
                    Escribir "Presione una tecla para continuar";
                    Esperar Tecla;
                Sino
                    Escribir "ID no v�lido."; // Validaci�n del ID ingresado
                    Esperar Tecla;
                Fin Si;
				
            4: // Opci�n 4: Salir del sistema
                Escribir "Saliendo del sistema...";
				
            De Otro Modo: // Manejo de opci�n no v�lida
                Escribir "Opci�n no v�lida.";
        Fin Segun;
    Hasta Que opc = 4; // Repetir hasta que el usuario elija salir
FinProceso

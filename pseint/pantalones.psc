Proceso CompraPantalones
    Definir num_pantalones Como Entero;
    Definir precio_pantalon, subtotal, descuento, total_iva, total_a_pagar, IVA Como Real;
    IVA <- 0.16;

    Escribir "Ingrese el número de pantalones a comprar:";
    Leer num_pantalones;
    
    Escribir "Ingrese el precio por pantalón:";
    Leer precio_pantalon;
    
    descuento = 0;
    
    Si num_pantalones < 5 Entonces
        descuento = 0;
    SiNo
        Si num_pantalones >= 5 Y num_pantalones < 12 Entonces
            descuento = 0.15;
        SiNo
            Si num_pantalones >= 12 Y num_pantalones < 20 Entonces
                descuento = 0.20;
            SiNo
                Si num_pantalones >= 20 Entonces
                    descuento = 0.25;
                FinSi;
            FinSi;
        FinSi;
    FinSi;
    
    subtotal = num_pantalones * precio_pantalon * (1 - descuento);
    
    total_iva = subtotal * IVA;
    total_a_pagar = subtotal + total_iva;
    
    // Mostrar el total a pagar
    Escribir "El total a pagar con IVA es: $", total_a_pagar;
FinProceso

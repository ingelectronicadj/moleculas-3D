clear all;
avogadro = 6.022e23;
armstrong = 10^(-10);
nAtomos_Oxigeno = 3;
nAtomos_Magnesio = 5;
radioOxigeno = 1.32*armstrong;
masaOxigeno = 16; %gramos/mol
radioMagnesio = 0.66*armstrong;
masaMagnesio = 24.312; %gramos/mol
format short;
arista = 2*(radioOxigeno+radioMagnesio)
%Factor de empaquetamiento
FE_Oxigeno = (nAtomos_Oxigeno*((4/3)*pi*radioOxigeno^3)/arista^3)*100
FE_Magnesio = (nAtomos_Magnesio*((4/3)*pi*radioMagnesio^3)/arista^3)*100
FE_Total = FE_Oxigeno + FE_Magnesio
%Calculo de desnsidad teorica
DT_Oxigeno = (masaOxigeno*nAtomos_Oxigeno)/((arista^3)*avogadro)
DT_Magnesio = (masaMagnesio*nAtomos_Magnesio)/((arista^3)*avogadro)
DT_Total = DT_Oxigeno + DT_Magnesio

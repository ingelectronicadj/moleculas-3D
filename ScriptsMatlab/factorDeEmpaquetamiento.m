clear all;
avogadro = 6.022e23;
armstrong = 10^(-10);
nAtomos_Sodio = 3;
nAtomos_Cloro = 5;
radioSodio = 0.98*armstrong;
masaSodio = 39.0983; %gramos/mol
radioCloro = 1.81*armstrong;
masaCloro = 35.4527; %gramos/mol
format short;
arista = 2*(radioSodio+radioCloro)
%Factor de empaquetamiento
FE_Sodio = (nAtomos_Sodio*((4/3)*pi*radioSodio^3)/arista^3)*100
FE_Cloro = (nAtomos_Cloro*((4/3)*pi*radioCloro^3)/arista^3)*100
FE_Total = FE_Sodio + FE_Cloro
%Calculo de densidad teorica
DT_Sodio = (masaSodio*nAtomos_Sodio)/((arista^3)*avogadro)
DT_Cloro = (masaCloro*nAtomos_Cloro)/((arista^3)*avogadro)
DT_Total = DT_Sodio + DT_Cloro

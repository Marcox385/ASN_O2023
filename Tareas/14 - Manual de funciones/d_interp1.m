%{
    SI727576 - Edgar Guzmán Claustro
    IS727272 - Marco Ricardo Cordero Hernández

    Manual de funciones

    interp1
%}

clc, clear

x = 0:pi/4:2*pi; 
v = cos(x);
xq = 0:pi/32:2*pi;
vq = interp1(x,v,xq);

figure('Name','Demostración de interp1');
plot(x,v,'o',xq,vq,':.');
xlim([0 2*pi]);
title('Interpolación lineal');

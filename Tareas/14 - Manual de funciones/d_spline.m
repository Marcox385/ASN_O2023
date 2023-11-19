%{
    SI727576 - Edgar Guzmán Claustro
    IS727272 - Marco Ricardo Cordero Hernández

    Manual de funciones

    spline
%}

clc, clear

x = 0:pi/4:2*pi; 
y = cos(x);
xq = 0:pi/32:2*pi;
vq = spline(x,y,xq);

figure('Name','Demostración de spline');
plot(x,y,'o',xq,vq,':.');
xlim([0 2*pi]);
title('Interpolación por splines cúbicos');


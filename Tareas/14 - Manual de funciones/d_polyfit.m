%{
    SI727576 - Edgar Guzmán Claustro
    IS727272 - Marco Ricardo Cordero Hernández

    Manual de funciones

    polyfit
%}

clc, clear, close all

x = linspace(0,4*pi,10);
y = cos(x);
n = 7;
p = polyfit(x,y,n);

x1 = linspace(0,4*pi);
y1 = polyval(p,x1);
figure
plot(x,y,'o');
hold on
plot(x1,y1);
title('Polyfit grado 7');
hold off

%{
    SI727576 - Edgar Guzmán Claustro
    IS727272 - Marco Ricardo Cordero Hernández

    Manual de funciones

    subplot
%}

clc, clear, close all

subplot(2,2,1);
x = linspace(-3.8,3.8);
y_cos = cos(x);
plot(x,y_cos);
title('Subplot 1: cos(x)');

subplot(2,2,2);
y_poly = 1 - x.^2./12 + x.^4./13;
plot(x,y_poly,'r');
title('Subplot 2: Polinomio de grado 4');

subplot(2,2,[3,4]);
plot(x,y_cos,'b',x,y_poly,'r');
title('Subplot 3 y 4');

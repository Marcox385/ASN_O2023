%{
    SI727576 - Edgar Guzmán Claustro
    IS727272 - Marco Ricardo Cordero Hernández

    Manual de funciones

    ode45
%}

clc, clear, close all

ode = @(t, y) -y;
tspan = [0, 5]; 
y0 = 1;           
[t, y] = ode45(ode, tspan, y0);

subplot(1,1,1);
plot(t, y);
title('Subplot 1: Solución de y'' = -y');

%{
    SI727576 - Edgar Guzmán Claustro
    IS727272 - Marco Ricardo Cordero Hernández

    Manual de funciones

    fsolve
%}

clc, clear, close all

fun = @(x) x.^2 - 4;
x0 = 2; 
x_sol = fsolve(fun, x0);

subplot(1,1,1);
x_vals = linspace(0, 4, 100);
y_vals = fun(x_vals);
plot(x_vals, y_vals, 'b', x_sol, 0, 'ro');
title('Subplot 1: Función y su raíz');

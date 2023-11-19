%{
    SI727576 - Edgar Guzmán Claustro
    IS727272 - Marco Ricardo Cordero Hernández

    Manual de funciones

    integral
%}

clc, clear, close all

f_cos = @(x) cos(x);
result_cos = integral(f_cos, -3.8, 3.8);
x = linspace(-3.8, 3.8);

y_cos = cos(x);subplot(1,1,1);
plot(x, y_cos);
title('Subplot 1: cos(x)');
subtitle = ['Área bajo la curva: ' num2str(result_cos)];
title(subtitle);

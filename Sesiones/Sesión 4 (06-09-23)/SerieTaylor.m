%PROGRAMA SerieTaylor.m
clear, clc, close all

% Definiendo parámetros
c = pi/2;
x = -4 : .1 : 6;
y = cos(x);

% Graficando
plot(x, y, 'k', 'Linewidth', 3) % Instruccion para generar una grafica
title('Estudio de la serie de Taylor') % Titulo de la grafica
xlabel('x') % Etiqueta del eje x
ylabel('cos(x) con diferente número de términos') % Etiqueta del eje y
axis([-4 6 -3 3]) % Dominio de x[0, 1] y y[2, 3]
grid on % Cuadricula de la grafica
hold on % Que la grafica permanezca abierta

% Considerando 4 términos en la serie
st = taylor_cosine(c, x, 4);
fprintf('%d', st);
plot(x, st, 'ro')

% Considerando 6 términos en la serie
st = taylor_cosine(c, x, 6);
plot(x, st, 'm-.*')

% Considerando 10 términos en la serie
st = taylor_cosine(c, x, 10);
plot(x, st, 'b', 'linewidth', 1)

% Considerando 13 términos en la serie
st = taylor_cosine(c, x, 13);
plot(x, st, 'g', 'linewidth', 3)

% Etiquetas
legend('cos(x)', 'Serie de 4 términos', ...
'6 términos', '10 términos', '13 terminos')

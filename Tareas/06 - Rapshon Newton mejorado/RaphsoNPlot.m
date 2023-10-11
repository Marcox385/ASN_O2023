%{
    SI727576 - Edgar Guzmán Claustro
    IS727272 - Marco Ricardo Cordero Hernández

    Gráfica de método Newton Raphson
%}

% Restablecer entorno
clear, clc, close all

% Definición de parámetros 
syms x;                                  % Variable simbólica
func = input('Ingrese la función: ');    % Función a evaluar
x0 = input('Ingrese el valor incial: '); % Valor inicial de la aproximación
tol = input('Ingrese la tolerancia: ');  % Porcentaje de tolerancia
range = x0-5:0.1:x0+5;                   % Rango en el eje X
y_sub = subs(func, x, range);            % Rango en el eje Y

% Configuración de la gráfica
figure('name','Método Newton Raphson', ...
    'NumberTitle','off');                % Título de ventana
title('Método Newton Raphson');          % Título de la gráfica
grid on;
hold on;
xlabel('x'), ylabel('y');                % Etiquetas de ejes
plot(range,y_sub);                       % Graficar límites

% Llamada a función y gráfica
pts = RaphsoN(func,x0,tol);             % Llamada de función

% Impresión de los puntos en la gráfica de la función
for p = 1:length(pts) - 1
    plot(pts(p), ...
        subs(func, x, pts(p)), 'r*');    % Graficar puntos
end

plot(pts(end),subs(func, x, ...
    pts(end)),'b*');                     % Grafica del resultado
text(pts(end), subs(func,x,pts(end)+2), ...
    'Resultado','FontSize',8);           % Texto del resultado
plot([0 0], ylim, 'k-')                  % Eje de abscisas
plot(xlim, [0 0], 'k-')                  % Eje de ordenadas
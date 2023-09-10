%{
    SI727576 - Edgar Guzmán Claustro
    IS727272 - Marco Ricardo Cordero Hernández

    Gráfica del metodo de bisección
%}

% Restablecer entorno
clear, clc, close all

% Definición de parámetros 
x = -10 : 0.01 : 10;                    % Dominio predefinido
y = @(x) x.^2 - 0.5;                    % Función con raíces reales
e = 0.0001;                             % Tolerancia de bisección

% Graficar resultados
figure('name','Método de  bisección', ...
    'NumberTitle','off');               % Título de ventana
plot(x, y(x), 'k')                      % Gráfica inicial
title('Método de bisección')            % Título de la gráfica
xlabel('x')                             % Etiqueta del eje x
ylabel(strrep(char(y),'@(x)','y = '))   % Etiqueta del eje y
grid on                                 % Cuadrícula de la gráfica
hold on                                 % Conservar gráfica
plot([0 0], ylim, 'k-')                 % Eje de abscisas
plot(xlim, [0 0], 'k-')                 % Eje de ordenadas

% Visualización de la bisección
points = bisection(y, x(1), x(end), e); % Invocar función
for p = points                          % Iterar sobre resultados
    if (p > points(end))                % Punto a la izquierda
        plot(p, 0, '^b', 'Linewidth', 2);
    elseif (p < points(end))            % Punto a la derecha
        plot(p, 0, 'vr', 'Linewidth', 2);
    else                                % Resultado final
        plot(p, 0, 'pentagramg', 'Linewidth', 2);
    end
end

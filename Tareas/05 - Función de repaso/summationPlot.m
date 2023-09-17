%{
    SI727576 - Edgar Guzmán Claustro
    IS727272 - Marco Ricardo Cordero Hernández

    Gráfica de sumatoria
%}

% Restablecer entorno
clear, clc, close all

% Definición de parámetros 
x = -10 : 0.01 : 10;                    % Dominio predefinido
y = @(x) x + 3;                         % Función con raíces reales
s = 0.5;                                % Paso de sumatoria
[li, ls] = deal(-3, 3);                 % Límites de integración
cy = 0;                                 % Auxiliar para rectángulos

% Graficar resultados
figure('name','Integral por sumatoria', ...
    'NumberTitle','off');               % Título de ventana
title('Integral por sumatoria')         % Título de la gráfica
xlabel('x')                             % Etiqueta del eje x
ylabel(strrep(char(y),'@(x)','y = '))   % Etiqueta del eje y
grid on                                 % Cuadrícula de la gráfica
hold on                                 % Conservar gráfica

% Visualización de la sumatoria
elements = summation(y, li, ls, s);
for h = 1:length(elements) - 1
    if (elements(h) < 0)
        cy = elements(h);
    else
        cy = 0;
    end

    rectangle('Position', [li+s*(h-1) cy s abs(elements(h))], ...
            'FaceColor', '#c7c7c7');
end

plot(x, y(x), 'k')                      % Gráfica de función
plot([0 0], ylim, 'k-')                 % Eje de abscisas
plot(xlim, [0 0], 'k-')                 % Eje de ordenadas

text(0, -1, strcat('Área = ', num2str(elements(end)))); % Resultado

% Mostrar límite inferior
plot([li li], ylim, 'k--')
text(li, -1, strcat('x = ', num2str(li)));

% Mostrar límite superior
plot([ls ls], ylim, 'k--')
text(ls, -1, strcat('x = ', num2str(ls)));


% Segundo caso de prueba (reemplazar anterior antes de ejecutar)
% x = -10 : 0.01 : 10;                    % Dominio predefinido
% y = @(x) 2*x.^2 - 5;                    % Función con raíces reales
% s = 0.25;                               % Paso de sumatoria
% [li, ls] = deal(-4, 2);                 % Límites de integración

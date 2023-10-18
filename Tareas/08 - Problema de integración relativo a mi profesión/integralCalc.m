%{
    SI727576 - Edgar Guzmán Claustro
    IS727272 - Marco Ricardo Cordero Hernández

    Problema de integración relativo a mi profesión
    Volumen de un solido de revolución (scroll wheel)
%}

% Restablecer entorno
clear, clc

% Función a utilizar
syms x;                          % Variable simbólica
f = sqrt(6.25 - (x - 7.5)^2);    % Función de segundo grado
r = 5;                           % Raíz izquierda de la función
A1 = @(f) 2 * pi * x * f;        % Auxiliar para revolución
A2 = @(x) 2 * pi .* x .* sqrt(6.25 - (x - 7.5).^2); % Auxiliar demostrativo

fprintf('Función a integrar: %s\n\tdesde a ≈ %f hasta b ≈ %f\n\n', ...
    A1(f), r, r*2);

% Integral
vol1 = int(A1(f), x, r, r*2);     % Evaluación de la integral
vol2 = integral(A2, r, r*2);      % Evaluación de la integral
fprintf('Primer método\nResultado ≈ %fu³\nVolumen total ≈ %fu³\n\n', ...
    vol1, vol1*2);                % Mostrar resultado
fprintf('Segundo método\nResultado ≈ %fu³\nVolumen total ≈ %fu³\n', ...
    vol2, vol2*2);                % Mostrar resultado

% Gráfica del sólido
figure('name', strcat('Visualización de ', string(A1(f))), ...
    'NumberTitle','off');        % Título de ventana

% Ajustes para gráfica aproximada (toroide)
u = linspace(0, 2*pi - eps);     % Conjunto de puntos
v = linspace(0, 2*pi - eps);     % Auxiliar para malla

[u,v] = meshgrid(u,v);           % Generar malla del sólido
X = (2*r + r*cos(v)).*cos(u) ;   % Dimensiones para x
Y = (2*r + r*cos(v)).*sin(u) ;   % Dimensiones para y
Z  = r/2*sin(v);                 % Dimensiones para z
surf(X, Y, Z);                   % Generar sólido

title('Sólido resultante');      % Título de la gráfica
shading flat; colormap sky;      % Cambiar aspecto de la gráfica 
axis equal;                      % Mostrar sólido simétricamente
xlabel x; ylabel y; zlabel z;    % Mostrar etiquetas de los ejes

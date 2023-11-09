%{
    SI727576 - Edgar Guzmán Claustro
    IS727272 - Marco Ricardo Cordero Hernández

    Problema resoluble a través de Runge-Kutta

    Ecuación del flujo no isotérmmico de un fluido newtoniano
    entre placas paralelas (ecuación diferencial de primer orden)
%}

% Restablecer entorno
clear, clc

% Datos de entrada
syms u v;                                   % Declaración de variables
f = u * (u/2 + 1) * v^3 + (u + 5/2) * v^2;  % Ecuación base
x0 = 2; x1 = 3; y0 = 0.1; h = 0.1;          % Valores conocidos
n = (x1 - x0)/h;                            % Despeje de pasos

% Invocación y cálculo del método con visualización de iteraciones
fprintf('Resultado = %10.10f\n', ...
    RungeKutta(inline(f), x0, y0, h, n, true));

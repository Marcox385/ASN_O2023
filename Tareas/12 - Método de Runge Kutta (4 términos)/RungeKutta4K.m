%{
    SI727576 - Edgar Guzmán Claustro
    IS727272 - Marco Ricardo Cordero Hernández

    Método de Runge-Kutta (Orden cuatro)
%}

% Restablecer entorno
clear, clc

% Introducción y valores iniciales
fprintf('\n \tRESOLUCIÓN DE ECUACIONES DIFERENCIALES POR MÉTODO RUNGE-KUTTA DE ORDEN 4\n');

f = inline(input('\nIngrese la ecuación diferencial -> ','s'));
x0 = input('\nIngrese el primer punto x0: ');
y0 = input('\nIngrese la condición inicial y(x0): ');
n = input('\nIngrese el número de pasos n: ');

% Inicializar variables auxiliares
x1 = 0; h = 0;

% Decisión para variable adicional
dec = input('\nSelecciona entre\n 1) x1\n 2) h\n Elección: ');

if (dec == 1)
    x1 = input('\nIngrese el segundo punto x1: ');
    h = (x1 - x0)/n;
elseif (dec == 2)
    h = input('\nIngrese h: ');
    x1 = h * n + x0; % Opcional
else
    fprintf('Parámetros incorrectos. Intenta de nuevo.\n');
    return
end

% Imprimir encabezado de tabla
fprintf('\nIteración\t\tx\t\ty');
for ord=1:4; fprintf('\t\tk%d', ord); end
fprintf('\n');

% Iterar sobre número de pasos definidos
k = [];
for i = 0:n
    % Mostrar iteración
    fprintf('\t%d\t\t%f\t%f', i, x0, y0);

    % Cálculo de términos y muestra
    k(1) = h * feval(f, x0, y0);
    k(2) = h * feval(f, x0 + 1/2 * h, y0 + 1/2 * k(1));
    k(3) = h * feval(f, x0 + 1/2 * h, y0 + 1/2 * k(2));
    k(4) = h * feval(f, x0 + h, y0 + k(3));
    for kn = k
        fprintf('\t%f', kn);
    end

    if (i == n); break; end
    
    % Reasignación de variables para próxima iteración
    y0 = y0 + (1/6) * (k(1) + 2*k(2) + 2*k(3) + k(4));
    x0 = x0 + h;

    fprintf('\n');
end

fprintf('\n\n El punto aproximado y(x1) es = %10.10f\n', y0);

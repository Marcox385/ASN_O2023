%{
    SI727576 - Edgar Guzmán Claustro
    IS727272 - Marco Ricardo Cordero Hernández

    Método de Runge-Kutta (Orden cuatro) transformado a función
%}

function y0 = RungeKutta(f, x0, y0, h, n, showIter)
%{
    f        = Función a evaluar
    x0       = Punto inicial x
    y0       = Punto inicial y(x0)
    h        = Cambio del método
    n        = Número de iteraciones
    showIter = Mostrar iteraciones (booleano)
%}

% Formato condicional de tabla
if (showIter)
    fprintf('\nIteración\t\tx\t\ty');
    for ord=1:4; fprintf('\t\tk%d', ord); end
    fprintf('\n');
end

% Iterar sobre número de pasos definidos
k = [];
for i = 0:n
    % Formato condicional de tabla
    if (showIter); fprintf('\t%d\t\t%f\t%f', i, x0, y0); end
       
    % Cálculo de términos
    k(1) = h * feval(f, x0, y0);
    k(2) = h * feval(f, x0 + 1/2 * h, y0 + 1/2 * k(1));
    k(3) = h * feval(f, x0 + 1/2 * h, y0 + 1/2 * k(2));
    k(4) = h * feval(f, x0 + h, y0 + k(3));

    % Formato condicional de tabla
    if (showIter); for kn = k; fprintf('\t%f', kn); end; end

    if (i == n); break; end
    
    % Reasignación de variables para próxima iteración
    y0 = y0 + (1/6) * (k(1) + 2*k(2) + 2*k(3) + k(4));
    x0 = x0 + h;

    % Formato condicional de tabla
    if (showIter); fprintf('\n'); end
end

% Formato condicional de tabla
if (showIter); fprintf('\n\n'); end

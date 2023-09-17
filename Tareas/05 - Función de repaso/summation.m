%{
    SI727576 - Edgar Guzmán Claustro
    IS727272 - Marco Ricardo Cordero Hernández

    Función para aproximación de integral (área bajo la curva)
    a través del metodo de sumatoria

    Nota: Se obtiene el resultado por sumas de Riemann por la derecha;
          Se espera áreas inexactas pero bastante aproximadas
%}

function sum = summation(f, li, ls, s)
%{
    f  = Función a evaluar
    li = Límite inferior
    ls = Límite superior
    s  = Paso entre evaluaciones
%}

% Variables locales
helper = 0;                 % Variable de ayuda
res = 0;                    % Contenedor de resultado (suma actual)
sum = [];                   % Elementos

% Comprobación de límites
if (li == ls)
   sum = 0;
   return
elseif (li > ls)            % Asegurar orden de límites
    helper = li;
    li = ls;
    ls = helper;
end

% Realizar n sumas hasta recorrer todo el rango
for i = li:s:ls-s
    helper = f(i + s);      % Evaluación de la función en el punto actual
    sum(end + 1) = helper;  % Anexar evaluación a resultado final

    res = res + helper * s; % Acumular área (base por altura) a suma final
end

sum(end + 1) = res;

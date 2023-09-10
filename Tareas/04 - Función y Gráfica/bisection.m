%{
    SI727576 - Edgar Guzmán Claustro
    IS727272 - Marco Ricardo Cordero Hernández

    Función para el método de bisección
    Nota: Solo funciona para funciones con raices reales
%}

function bis = bisection(f, li, ls, e)
%{
    f  = Función a evaluar
    li = Límite inferior (a)
    ls = Límite superior (b)
    e  = Error absoluto
%}

% Variables locales
a = li;                 % Límite por la izquierda
b = ls;                 % Límite por la derecha
le = 1;                 % Error absoluto actual
bis = [];               % Puntos resultantes
helper = 0;             % Variable de ayuda
iters = 500;            % Iteraciones máximas antes de fallar

% Asegurar intervalo correcto
if (f(a)*f(b) > 0)      % Revisar convergencia inicial
    while (f(a) > 0)    % Modificar límite izquierdo
        a = a + 0.1;
        
        iters = iters - 1;
        if (iters == 0)
            fprintf('Límite inferior incorrecto.\n');
            return
        end
    end

    iters = 500;
    
    while (f(b) < 0)    % Modificar límite derecho
        b = b - 0.1;

        iters = iters - 1;
        if (iters == 0)
            fprintf('Límite superior incorrecto.\n');
            return
        end
    end
    
    if (a > b)          % Invertir límites si se requiere
        helper = a;
        a = b;
        b = helper;
    end
end   

% Proceso de bisección
while (le > e)
    bis(end + 1) = (a + b) / 2;
    
    % Sustituir límites por nuevo valor
    if (f(bis(end)) < 0)
        a = bis(end);
    else
        b = bis(end);
    end

    % Evaluar error absoluto
    if (length(bis) > 1)
        le = abs(bis(end) - bis(end - 1));
    end
end

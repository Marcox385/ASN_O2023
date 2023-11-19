%{
    SI727576 - Edgar Guzmán Claustro
    IS727272 - Marco Ricardo Cordero Hernández

    Manual de funciones

    Método de bisección vs función fsolve
%}

% Restablecer entorno
clear, clc

% Variables comunes
f = @(x) x.^2 - 0.5;    % Función a evaluar
a = -10;                % Límite por la izquierda
b = 10;                 % Límite por la derecha

% ---- Bisección ---- %
% Variables del método
le = 1;                 % Error absoluto actual
e = 0.0001;             % Tolerancia
bis = [];               % Puntos resultantes
helper = 0;             % Variable de ayuda
iters = 500;            % Iteraciones máximas antes de fallar

% Asegurar intervalo correcto
if (f(a)*f(b) > 0)      % Revisar convergencia inicial
    while (f(a) > 0)    % Modificar límite izquierdo
        a = a + 0.1; iters = iters - 1;
        if (iters == 0)
            fprintf('Límite inferior incorrecto.\n');
            return
        end
    end

    iters = 500;
    
    while (f(b) < 0)    % Modificar límite derecho
        b = b - 0.1; iters = iters - 1;
        if (iters == 0)
            fprintf('Límite superior incorrecto.\n');
            return
        end
    end
    
    if (a > b)          % Invertir límites si se requiere
        helper = a; a = b; b = helper;
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

fprintf('Resultado de bisección\t-> %f\n', bis(end));

% ---- fsolve ---- %
xs = [-10, 10];                        % Puntos iniciales
opts = optimset('Display','off');   % Ocultar texto del resultado
easy_method = fsolve(f, xs, opts);  % Uso de la función
fprintf('Resultado de fsolve\t-> %f\n', easy_method);


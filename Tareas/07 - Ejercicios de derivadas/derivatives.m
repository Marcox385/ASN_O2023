%{
    SI727576 - Edgar Guzmán Claustro
    IS727272 - Marco Ricardo Cordero Hernández

    Ejercicios de derivadas
%}

% Restablecer entorno
clear, clc

% Ejemplo
syms x;                             % Variable simbólica
f = (x^3 + 2)/3;                    % Función a derivar
disp(diff(f))                       % Mostrar derivada

% Derivadas con archivos            
path = 'derivatives.txt';           % Ruta del archivo
fid = fopen(path);                  % Abrir archivo
line = fgetl(fid);                  % Obtener primera línea
cnt = 0;                            % Contador de iteraciones

% Iterar sobre archivo
while ischar(line)
    cnt = cnt + 1;                  % Aumentar contador
    fprintf("%d - f(x) = %s --- f'(x) = %s\n", cnt, ...
        line, diff(str2sym(line))); % Mostrar resultados
    line = fgetl(fid);              % Obtener siguiente línea
end

fclose(fid);                        % Cerrar archivo

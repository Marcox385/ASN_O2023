%{
    SI727576 - Edgar Guzmán Claustro
    IS727272 - Marco Ricardo Cordero Hernández

    Método Newton Raphson
%}

function rn = RaphsoN(f,x0,tol)
%{
    f   = Función a evaluar
    x0  = Punto inicial
    tol = Tolerancia
%}

% Variables locales
rn = [];                % Arreglo donde se almacenan las aproximaciones
syms x;                 % Variable simbólica
i = 1;                  % Contador auxiliar para iteraciones
fx(i) = x0;             % Arreglo que guarda el punto de partida
f1 = subs(f,x,fx(i));   % Evaluación de la función en base a los puntos de partida
der = diff(f);          % Derivada
df = subs(der,x,fx(i)); % Evaluación de la derivada
ea(1) = 100;            % Error de la aproximación

% Obtener valores del método mientras que no se cumpla el error
while abs(ea(i)) >= tol
    fx(i+1) = fx(i) - f1/df;    % Se guarda la división menos la diferencia
    f1 = subs(f,x,fx(i+1));     % Evaluación con el nuevo valor de i en función
    df = subs(der,x,fx(i+1));   % Evaluación con el nuevo valor de i en derivada
    ea(i+1) = abs((fx(i+1)-fx(i))/fx(i+1)*100); % Cálculo del error aproximado
    i = i + 1;                  % Siguiente iteración
end

% Muestra y almacenamiento de resultados del método
fprintf('Inter\t\tAprox\n');
for j = 1:i
    fprintf('%d\t\t%1.9f\n', j-1, fx(j)); 
    rn(end+1) = fx(j);  % Almacenar resultado de iteracion
end

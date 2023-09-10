%PROGRAMA taylor_cosine.m
% Se desea encontrar una aproximación utilizando el polinomio de Taylor
% para la función cos(x) en el punto de partida de pi/2 
% y en el intervalo de [-4  6] con 4, 6 y 10 términos del polinomio.
% Hecho por: Ing. Marco Cordero

% Palabra reservada function, (es particular del lenguaje m)
% Nombre de la función (taylor_cosine)
% Parámetros / Argumento o datos de entrada - Datos para la que la función pueda
% ejecutarse (c,x,n) y que con frecuencia coinciden con los datos de entrada
% Valor de retorno o respuesta(stp)

function stp = taylor_cosine(c, x, n)
% c = centro de la función
% x = un conjunto de valores alrededor del centro
% n = número de términos en la serie

% Comenzando la serie con 0
st = 0;

% Considerando todas las posibles derivadas
deriv = [0 -1 0 1]';

% Iterando n veces (desde 0 hasta n-1)
for i = 0 : n-1
    % Implementando la expansión de Taylor
    t(i+1, :) = deriv(1) * (x-c).^(i) / factorial(i);

    %{
    Cuando se utilizan los dos puntos como subíndice en una expresión de indexación, como A(:,n),
    actúa como clave para incluir todos los subíndices de una dimensión de array determinada.
    %}
    
    % Encontrando la derivada del siguiente término
    deriv = circshift(deriv, -1);
end

% Suma de términos
stp = sum(t);

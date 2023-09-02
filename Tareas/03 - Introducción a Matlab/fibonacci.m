%{
    SI727576 - Edgar Guzmán Claustro
    IS727272 - Marco Ricardo Cordero Hernández

    Fibonacci

    Nota: Se calcula según N términos de la serie especificados
          en vez de un número dentro de la misma
%}

% Restablecer entorno
clc             % Limpiar pantalla
clear           % Limpiar variables del entorno

% Variables de control
[initA, initB, initC] = deal(1); % Asignación múltiple de variables
lenght = 0;      % Tamaño de la serie

% Ingresar el dato hasta que sea válido
while lenght <= 0
    lenght = input('Ingresa el número de elementos de la serie: ');
end

% Imprimir términos especificados de la serie
fprintf("La serie es: ");
for i = 1 : lenght
    fprintf("%d ", initA);
    initC = initA + initB;
    initA = initB;
    initB = initC;
end
fprintf('\n');


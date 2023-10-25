%{
    SI727576 - Edgar Guzmán Claustro
    IS727272 - Marco Ricardo Cordero Hernández

    Método de Jacobi con formato
%}

% Restablecer entorno
clear, clc

% Definición de argumentos de entrada
dimension = input('Escriba la dimensión de la matriz(2x2 = 2, 3x3 = 3): ');
ecuaciones = input('Escriba los coeficientes de las ecuaciones ya ordenadas sin resultados [a1 a2 an ; b1 b2 bn ; n1 n2 nn]: ');
resultados = input('Escriba los resultados de las ecuaciones ya ordenadas [r1 ; r2 ; rn]: ');
errorPermitido = input('Escriba el error en decimales: ');

% Variables auxiliares
abc = 'abcdefghijklmnopqrstuvwxyz';     % Identificadores de variables
error = 1;                              % Error inicial
cnt = 0;                                % Auxiliar para iteraciones

% Imprimir encabezado de tabla e inicializar resultados
fprintf('n\t');
for i=1:dimension
    valores(i)=0;
    fprintf('%s\t', abc(i));
end
fprintf('Error\n');

while error >= errorPermitido
    for i=1:dimension
        aux = 0;    % Auxiliar del método
        for j=1:dimension
            % Si no es parte de la diagonal, sustituir valor
            if j ~= i
                aux = aux + ecuaciones(i,j) * valores(j);
            end
        end
        
        % Sustuir valores de iteración anterior
        x_Nueva(i) = (resultados(i,1) - aux)/(ecuaciones(i,i));
        Error_Ind(i) = abs((x_Nueva(i) - valores(i))/x_Nueva(i));
    end

    % Actualizar error y mostrar resultados de iteración
    error = sum(Error_Ind(1:dimension))/dimension;
    fprintf('%d\t', cnt);
    for i=1:dimension
        valores(i) = x_Nueva(i);
        fprintf('%-.5f\t', valores(i));
    end

    cnt = cnt + 1;
    fprintf('\t%.5f\n', error);
end
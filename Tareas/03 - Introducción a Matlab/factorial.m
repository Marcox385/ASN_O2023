%{
    SI727576 - Edgar Guzmán Claustro
    IS727272 - Marco Ricardo Cordero Hernández

    Factorial
%}

% Restablecer entorno
clc             % Limpiar pantalla
clear           % Limpiar variables del entorno

% Variables de control
limite = 1;
resultado = 1;

% Comprobar valor hasta que sea válido
while true
    limite = input('Introduce un número: ');
    
    if limite < 0 || limite >= 20
        fprintf('Valor inválido. Rango admitido -> [0, 20)\n\n');
    else
        if limite == 0; limite = 1; end
        break;
    end
end

% Calcular factorial (método iterativo)
for i = 1 : limite
    resultado = resultado * i;
end

fprintf('Resultado: %d\n', resultado);

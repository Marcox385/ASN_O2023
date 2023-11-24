%{
    SI727576 - Edgar Guzmán Claustro
    IS727272 - Marco Ricardo Cordero Hernández

    Proyecto - NRZ - Manejador
%}

% Restablecer entorno
clear, clc, close all

% Definición de valores de entrada
str = input('Ingresa el dato a transmitir -> ', 's');
binstr = str2bin(str);  % Convertir entrada a binario
T = input('Ingresa la duración de la señal (s) -> ');
P = input('Ingresa puntos de muestra -> ');       
V = input('Ingresa la velocidad de los datos (bps) -> ');
A = input('Ingresa amplitud de la señal -> ');
N = upper(input('¿Deseas agregar ruido a la señal? -> ', 's'));
t = 0:1/(V*P):T;        % Representación gráfica de la duración
valid_options = {'Y' 'S' 'TRUE' '1'};

% Verificar variable de ruido
for o = 1:length(valid_options)
    if (N == valid_options{o})
        N = true; break
    end
end

if (N ~= true)
    N = false;
end

% Llamada a función
nrz = NRZ(binstr, T, P, V, A, N);

% Gráfica
figure('name', 'Demostración de NRZ', 'NumberTitle','off');
plot(t, nrz);
xlim([0 0.1]);
title(strcat('Transmisión de texto: ', str));
xlabel(binstr);

%{
    SI727576 - Edgar Guzmán Claustro
    IS727272 - Marco Ricardo Cordero Hernández

    Proyecto - NRZ - Función
%}

function nrz = NRZ(D, T, P, V, A, N)
%{
    D = Cadena binaria de datos para la señal
    T = Duración de la señal
    P = Puntos de muestra
    V = Velocidad de los datos
    A = Amplitud de la señal
    N = Agregar ruido a la señal (booleano)
%}

% Variables locales
Tb = 1 / V;             % Tiempo de duración del bit
PT = Tb / P;            % Paso de tiempo
t = 0:PT:T;             % Segmentación del tiempo de la señal
NP = length(t);         % Total de puntos en la señal
nrz = zeros(1, NP);     % Señal base

% Ajuste de la señal
for n = 0:length(D)-1
    if D(n+1) == '1' || D(n+1) == 1
        nrz(P*n+1:P*n+P) = 1;
    end
end

nrz = nrz .* A;

% Agregar ruido a la señal
if (N == true)
    SNR = floor(rand()*10);
    nrz = awgn(nrz, SNR, 'measured');
end

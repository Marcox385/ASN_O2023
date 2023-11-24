%{
    SI727576 - Edgar Guzmán Claustro
    IS727272 - Marco Ricardo Cordero Hernández

    Proyecto - NRZ - String a binario
%}

function str = str2bin(s)
%{
    s = Cadena de entrada
%}

holder = reshape(dec2bin(s, 8).'-'0',1,[]); % Convertir a binario
str = '';                                   % Cadena contenedora

% Regresar arreglo de binarios en cadena
for c = holder
    str = strcat(str, int2str(c));
end

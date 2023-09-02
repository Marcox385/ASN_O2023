% Este programa genera el factorial de un número dado por el usuario
% Por: IS727272 - Cordero Hernandez, Marco Ricardo

clear   % Limpiar variables
clc     % Limpiar consola

limite = input('Dame un númerooo para calcular el factorial: ');

while limite < 1 || limite >= 20
    fprintf('\nNumero invalido. Rango permitido -> [1, 20)\n');
    limite = input('Dame un númerooo para calcular el factorial: ');
end

aux = 1;
facto = 1;
for(i=1:limite)
    facto = facto * i;
end 

fprintf('\nEl factorial de %i es %i\n', limite, facto);
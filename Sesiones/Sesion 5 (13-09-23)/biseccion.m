% Programa que ejemplifica el método de Bisección para la función dada por
% el usario
% Programa hecho por Marco Cordero

% 1. Pedir el límite inferior (x0)
% 2. Pedir el límite superior (x1)
% 3. Pedir la tolerancia (tol)
x0 = input('Ingresa el límite inferior: ');
x1 = input('Ingresa el límite superior: ');
tol = input('Ingresa la tolerancia: ');

% 4. Validar si en la función que se desea evaluar en los límites ingresados 
    % Si hay cambio de signo (si f(x0) * f(x1) < 0), si sí, continuar, si no, 
    % ir al paso 10
    % 5. Tomar datos iniciales para el ciclo (x=x0)
        % Mientras la aproximación sea mayor a la tolerancia, ejecutar (mientras abs(f(x))>tol)
             % 6.  Aproximación (x=(x0+x1)/2)
             % 7.  Realizar ajuste del intervalo (si f(x0) * f(x) < 0, 
                 %      entonces x1=x, si no, x0=x   
        % 8. Termina ciclo  
% 9. Despliega ('La raíz de esta función es: '(x)) y terminar.   
% 10. Despliega ('No puedo aplicar el método porque no hay cambio de signo') y terminar
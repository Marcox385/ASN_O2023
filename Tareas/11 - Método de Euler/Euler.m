%{
    SI727576 - Edgar Guzmán Claustro
    IS727272 - Marco Ricardo Cordero Hernández

    Método de Euler
%}

% Introducción y valores iniciales
fprintf('\n \tRESOLUCIÓN DE ECUACIONES DIFERENCIALES POR MEDIO MÉTODO DE EULER\n')

f = input('\nIngrese la ecuación diferencial de la forma: dy/dx=f(x,y) -> ','s');
x0 = input('\nIngrese el primer punto x0: ');
x1 = input('\nIngrese el segundo punto x1: ');
y0 = input('\nIngrese la condición inicial y(x0): ');
n = input('\nIngrese el número de pasos n: ');

% Calcular h e inicializar ambas variable
h = (x1 - x0)/n;
y = y0;
x = x0;

% Imprimir encabezado de tabla
fprintf('\nIteración\t\tx\t\ty\n');

% Iterar sobre número de pasos definidos
for i = 0:n
    y = y + h*eval(f);
    x = x + h;
    fprintf("\t%d\t\t%f\t%f\n",i,x,y);
end

fprintf('\n El punto aproximado y(x1) es = %10.6f\n', y);

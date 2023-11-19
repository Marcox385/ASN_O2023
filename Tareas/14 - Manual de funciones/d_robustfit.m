%{
    SI727576 - Edgar Guzmán Claustro
    IS727272 - Marco Ricardo Cordero Hernández

    Manual de funciones

    robustfit
%}

x = linspace(0, 10, 20)';
y = 2*x + 1 + 0.5*randn(size(x));
[b, stats] = robustfit(x, y);
figure;
scatter(x, y, 'o');
hold on;
plot(x, b(1) + b(2)*x, 'r-', 'LineWidth', 2);
title('Ajuste Robusto de Regresión Lineal');
xlabel('X');
ylabel('Y');
legend('Datos', 'Ajuste Robusto');

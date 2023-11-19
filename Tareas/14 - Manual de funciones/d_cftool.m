%{
    SI727576 - Edgar Guzmán Claustro
    IS727272 - Marco Ricardo Cordero Hernández

    Manual de funciones

    cftool
%}

x = linspace(0, 10, 20)';
y = 2*x + 1 + 0.5*randn(size(x));
cftool(x, y);
fitresult = fit(x, y, 'poly1');
coefficients = coeffvalues(fitresult);
figure;
scatter(x, y, 'o', 'DisplayName', 'Datos');
hold on;
plot(fitresult, 'r-', 'DisplayName', 'Ajuste');
title('Ajuste de Curva con cftool');
xlabel('X');
ylabel('Y');
legend('show');
grid on;

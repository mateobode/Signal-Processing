function x = rep_grafic(w, Ts, M);
m = 0:M-1 %se alege suportul m
x_a = sin(w * m); %reprezentam sinusoida continua
plot(x_a); %graficul sinusoidului continuu
hold on;
x = x_a * Ts; %reprezentam sinusoida discreta
stem(x); %graficul sinusoidului discret
hold off;
end
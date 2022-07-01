N = 100; %lungimea suportului
n = 0:N-1 %suportul
w = 3*pi/15; %pulsatia


x = sin(w * n); %generez semnalul sinusoidal

figure('Name', 'sinusoida');
plot(x); %reprezint grafic semnalul sinusoidal ca sa contina cel putin 5 perioade ale sinusoidei
hold on
figure('Name', 'Auto-corelatia semnalului sinusoidal');
rx = xcorr(x, 'biased'); %fac autocorelatia semnalului sinusoidal
plot(rx);
hold off

[max_value, index1] = max(rx); %maxim se gaseste in valoarea 0.5
[min_value, index2] = min(rx); %minim se gaseste in valoarea -0.475

%nu am rezolvat sa gasesc k si nu am putut sa inteles cum trebuie sa compar
%minim si maxim cu perioada sinusoidei
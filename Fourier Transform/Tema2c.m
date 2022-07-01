N = 100;
n = 0:N-1; %suportul
w_0 = pi/8; %frecventa
phi = pi;
w = -pi:.01:pi;

x_n = cos((w_0 * n) + phi);

X = freqz(x_n, 1, w);

plot(w, abs(X));
grid on;
title('Graficul cu faza pi/3');

%dupa ce am rulat programul considerand alte valori a fazei dar respectand
%intervalul [0,2pi] am observat ca graficul spectrului ramane simetric
%pentru ca se respecta relatia explicata la punctul b
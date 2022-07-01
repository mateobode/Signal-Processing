N = 100;
n = 0:N-1; %alegem suportul cu N elemente
w_0 = pi/8; %aleg pulsatia de exemplu pi/8 ca in exercitii anterior

e_n = randn(1, N); %generez semnalul zgomot alb
x_n = cos(w_0 * n) + e_n; %generez procesul

%a

figure;
plot(n, x_n);
hold on;
stem(n, x_n);
title('Graficul procesului x[n]: ');
hold off;

%cum se vede si prin grafic este foarte greu de estimat perioada

%b

w = -pi:.01:pi; %alegem grila de frecvente

X = freqz(x_n, 1, w);

fi_x = (1/N) * (abs(X).^2); %calculam densitatea spectrala de putere(2.13)

figure;
plot(w, fi_x, 'r');
title('Graficul de densitate spectrala de putere');
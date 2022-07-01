N = 100;
n = 0:N-1; %alegem suportul cu N elemente
w_0 = pi/8; %aleg pulsatia de exemplu pi/8 ca in exercitii anterior
w = -pi:.01:pi; %grila de frecvente

e_n = randn(1, N); %generez semnalul zgomot alb

a = 3;
x_a = cos(w_0 * n) + a * e_n; %generez procesul

figure;
plot(n, x_a);
hold on;
stem(n, x_a);
title('Graficul procesului a=3: ');
hold off;

X_a = freqz(x_a, 1, w);

fi_x = (1/N) * (abs(X_a).^2); %calculam densitatea spectrala de putere(2.13)

figure;
plot(w, fi_x, 'r');
title('Graficul de densitate spectrala de putere a=3');

a1 = 5;
x_a1 = cos(w_0 * n) + a1 * e_n; %generez procesul

figure;
plot(n, x_a1);
hold on;
stem(n, x_a1);
title('Graficul procesului a=5: ');
hold off;

X_a1 = freqz(x_a1, 1, w);

fi_x1 = (1/N) * (abs(X_a1).^2); %calculam densitatea spectrala de putere(2.13)

figure;
plot(w, fi_x1, 'b');
title('Graficul de densitate spectrala de putere a=5');

a2 = 2/3;
x_a2 = cos(w_0 * n) + a2 * e_n; %generez procesul

figure;
plot(n, x_a2);
hold on;
stem(n, x_a2);
title('Graficul procesului a=2/3: ');
hold off;

X_a2 = freqz(x_a2, 1, w);

fi_x2 = (1/N) * (abs(X_a2).^2); %calculam densitatea spectrala de putere(2.13)

figure;
plot(w, fi_x2, 'g');
title('Graficul de densitate spectrala de putere a=2/3');

a = 14;
x_a3 = cos(w_0 * n) + a * e_n; %generez procesul

figure;
plot(n, x_a3);
hold on;
stem(n, x_a3);
title('Graficul procesului a=14: ');
hold off;

X_a3 = freqz(x_a3, 1, w);

fi_x3 = (1/N) * (abs(X_a3).^2); %calculam densitatea spectrala de putere(2.13)

figure;
plot(w, fi_x3, 'y');
title('Graficul de densitate spectrala de putere a=14');
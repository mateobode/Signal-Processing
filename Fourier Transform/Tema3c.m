%trebuie sa folosim semnale cu amplitudine diferite nu ca in punctul b
%asa ca sa schimbam amplitudinea unui semnal o sa il inmultesc cu un numar
%intreg oarecare de exemplu o sa aleg nr = 3

N = 100;
n = 0:N-1;
nr = 3;
w_1 = pi/8;
w_2 = pi/3;

x_n = nr * cos(w_1 * n) + cos(w_2 * n);

figure;
plot(n, x_n);
hold on;
stem(n, x_n);
title('Graficul semnalului x[n]:');
hold off;

p1 = 2 * pi / w_1; %perioda semnalului cu pulsatia w_1
p2 = 2 * pi / w_2; %perioda semnalului cu pulsatia w_2

p = lcm(p1, p2); %perioda x[n] este least common multiple a perioadele p1 si p2

w = -pi:.01:pi; %alegem grila de frecvente

X = freqz(x_n, 1, w); %facem TF a semnalului

figure;
plot(w, abs(X), 'r');
grid on;
title('Spectrul semnalului: ');
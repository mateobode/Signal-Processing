%trebuie sa alegem frecvente foarte aproape una de alta a.i diferenta lor
%sa fie 0.01, asa ca o sa iau w_2 sa fie pi/8 + 0.01, si din asta rezulta
%w_1 care este 0.01 mai mica decat w_2
%repetam pasi de la pct a,b,c

N = 100;
n = 0:N-1;
nr = 3;
w_1 = pi/8;
w_2 = pi/8 + 0.01;

x_n = cos(w_1 * n) + cos(w_2 * n);

figure;
plot(n, x_n);
hold on;
stem(n, x_n);
title('Graficul semnalului x[n]:');
hold off;

p = 2*pi/w_1;

w = -pi:.01:pi; %alegem grila de frecvente

X = freqz(x_n, 1, w); %facem TF a semnalului

figure;
plot(w, abs(X), 'r');
grid on;
title('Spectrul semnalului: ');

x = nr * cos(w_1 * n) + cos(w_2 * n);

figure;
plot(n, x);
hold on;
stem(n, x);
title('Graficul semnalului x[n] cu amplitudine diferite:');
hold off;

X = freqz(x_n, 1, w); %facem TF a semnalului

figure;
plot(w, abs(X), 'g');
grid on;
title('Spectrul semnalului cu amplitudine diferite: ');

%daca luam doua frecvente foarte aproape una de alta suma semnalele
%raspunda ca si cum este un singur semnal sinusoidal real,
%graficul in real difera in functie de amplitudinea sinusoidei iar
%spectrul nu difera si cand difera amplitudine, deci este in fiecare
%data identic
%a

N = 100;
n = 0:N-1; %suportul
w_0 = pi/8; %frecventa

%faza acestui semnal trebuie sa apartine intervalul [0,2pi] asa ca eu am
%ales sa iau faza pi/8 ca si cum pulsatia acestuia pentru a genera semnalul

phi = pi/8; %faza

x_n = sin((w_0 * n) + phi); %semnalul sinusoidal real x[n]
plot(x_n);
title('Graficul semnalului: ');

w = -pi:.01:pi; %alegem grila de frecvente w

X = freqz(x_n, 1, w); %calculam TF a lui x[n]

figure;
plot(w, abs(X), 'r');
title('Spectrul semnalului: ');
grid on;

%dupa cum se vede si grafic spectrul semnalului este simetric fata de axa
%verticala asa cum presupune relatiile (2.7) pe laborator

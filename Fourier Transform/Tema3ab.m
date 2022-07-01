%a

N = 100;
w_1 = pi/8; 
w_2 = pi/3;

n = 0:N-1;

%scriem suma a doua sinudoide reale

x_n = cos(w_1 * n) + cos(w_2 * n);

figure;
plot(n, x_n);
hold on;
stem(n, x_n);
title('Graficul semnalului x[n]:');
hold off;

p1 = 2 * pi / w_1; %perioda semnalului cu pulsatia w_1
p2 = 2 * pi / w_2; %perioda semnalului cu pulsatia w_2

p = lcm(p1, p2); %perioda x[n] este least common multiple a perioadele p1 si p2
%pentru ca x[n] este format din suma semnalelor care au respectiv perioda
%p1 si p2
%dar se vede si prin grafic ca perioda semnalului este 48

%b

w = -pi:.01:pi; %alegem grila de frecvente

X = freqz(x_n, 1, w); %facem TF a semnalului

figure;
plot(w, abs(X), 'r');
grid on;
title('Spectrul semnalului: ');

%si acest grafic observ ca este simetric

%din exercitiul anterior am rezolvat si observat ca graficul spectrului
%semnalului sinusoidal real a fost simetric si logic pentru suma a doua
%sinusoide reale va obtinem spectrul ambele sinusoidei, tot simetric,
%formand spectrul semnalului ce reprezinta suma sinusoidei
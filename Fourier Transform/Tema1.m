%pct a

N = 100; %alegem N suficient de mare
n = 0:N-1; %suportul
w_0 = pi/8; %pulsatia sinusoidei complexa

%generez semnalul sinusoidal complexn a.i graficul sa contine 5 perioade
%ale semnalului

j = sqrt(-1); 
x_n = exp(j * w_0 * n); %sinusoida complexa x[n]
plot(n, real(x_n));
hold on;
stem(n, real(x_n));
title('Sinusoida complexa: '); 
hold off;

%ca sa gasesc pct de extrem al spectrului am gandit ca sa scriu expresia
%spectrului ca o functie de w (pulsatia)

syms w;

X_w = abs((sin(w-w_0)*N/2) / (sin(w-w_0) / 2));
max = solve(diff(X_w), w);

%obtinem val maxim = 99.23 la punctul 0.3884

%b

w = -pi:.01:pi; %grila de frecvente la intervalul [-pi,pi]
X = freqz(x_n, 1, w); %TF a semnaluli x[n]

figure;
plot(w, angle(X), 'r');
title('Faza spectrul semnalului: ');
figure;
plot(w, abs(X), 'r');
title('Amplitudinea spectrul semnalului: ');

%c

hold on;
plot(w_0, N, 'x'); %verificarea grafic a lui abs(X_w0) = N
%valoarea maxim a spectrului este 99.23 si N = 100. putem sa spunem ca se
%aproprie foarte mult

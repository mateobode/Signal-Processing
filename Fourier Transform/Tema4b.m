run('lynx.m');

figure;
plot(year, lynx_t, 'r');
title('Graficul rasului de lynx intre anii: ');

w = -pi:.01:pi;

X = freqz(lynx_t, 1, w);

figure;
plot(w, abs(X), 'r');
title('Spectrul: ');

%din grafic obtinem frecventa in varful cel mai inalt din dreapta w=0.6484

w_varf = 0.6484;

T = 2*pi/w_varf;

%iau graficul pt 50

figure;
plot(year(1:50), lynx_t(1:50), 'g');
title('Graficul de lynx 50: ');

X_50 = freqz(lynx_t(1:50),1,w);

figure;
plot(w, abs(X_50), 'g');
title('Spectrul Lynx 50: ');

w50 = 0.6584;
T50 = 2*pi/w50;

%iau graficul pt 100

figure;
plot(year(1:100), lynx_t(1:100), 'b');
title('Graficul de Lynx 100: ');

X_100 = freqz(lynx_t(1:100),1,w);

figure;
plot(w, abs(X_100), 'b');
title('Spectrul Lynx 100: ');

w100 = 0.6584;
T100 = 2*pi/w100;

%cum observam si grafic vedem ca scaderea duratei scade si amplitudinea
%spectrului la fel ca pe punctul a
%perioada nu difera mult este aproximativ 10
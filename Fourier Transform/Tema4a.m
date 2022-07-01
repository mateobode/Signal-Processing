load('sunspot.dat');

x_300 = sunspot(:,2); %salvez pete solare pe 300 ani ca sa le folosesc ca un semnal

figure;
plot(x_300, 'r'); %iau 2 coloanele ale sunspot.dat ca sa fac graficul acestuia
title('Graficul de pete solare 300ani: ');

w = -pi:.01:pi;

X_300 = freqz(x_300,1,w);

figure;
plot(w, abs(X_300), 'r');
title('Spectrul 300ani: ');

%cum se vede si prin grafic cel mai inalt varf este cel dreapta si acolo
%avem frecventa w_varf = 0.5684

w_varf = 0.5684;

T = 2*pi/w_varf; %valoarea perioadei este aproximativ 11, deci este corect

%iau graficul pentru 50ani

x_50 = sunspot(1:50, 2);

figure;
plot(x_50, 'g');
title('Graficul de pete solare 50ani: ');

X_50 = freqz(x_50,1,w);

figure;
plot(w, abs(X_50), 'g');
title('Spectrul 50ani: ');

w50 = 0.5784;
T50 = 2*pi/w50;

%iau graficul 100 ani

x_100 = sunspot(1:100, 2);

figure;
plot(x_100, 'b');
title('Graficul de pete solare 100ani: ');

X_100 = freqz(x_100,1,w);

figure;
plot(w, abs(X_100), 'b');
title('Spectrul 100ani: ');

w100 = 0.6084;
T100 = 2*pi/w100;

%cum observam si grafic vedem ca scaderea duratei scade si amplitudinea
%spectrului
%perioada nu difera mult, scade putin din 11
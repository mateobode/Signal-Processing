load('xilo.mat');

x = yx(8000:10000); %extragem esantioanele de la 8000 la 10000
w = -pi:.01:pi;

figure;
plot(x, 'r');
title('Reprezentare grafic a semnalului xilo(8000:10000): ');

X = freqz(x,1,w);

figure;
plot(w, abs(X), 'r');
title('Spectrul semnalului xilo(8000:10000)');

%se vede si prin grafic ca are un varf maxim pe w = 0.2084

w_varf = 0.2084;
T = 2*pi/w_varf;

%deci perioada este aproximativ 30

%luam pentru mai putin esantioane

x1000 = yx(8000:9000);

figure;
plot(x1000, 'g');
title('Reprezentare grafic a semnalului xilo(8000:9000): ');

X1000 = freqz(x1000,1,w);

figure;
plot(w, abs(X1000), 'g');
title('Spectrul semnalului xilo(8000:9000)');

%perioada este aceasi

%luam iar pentru mai putin esantioane

x500 = yx(8000:8500);

figure;
plot(x500, 'b');
title('Reprezentare grafic a semnalului xilo(8000:8500): ');

X500 = freqz(x500,1,w);

figure;
plot(w, abs(X500), 'b');
title('Spectrul semnalului xilo(8000:8500)');

%si la asta perioada este aceasi

%cand scadem esantioanele, armonica este mai scurta decat cand luam mai
%multe esantioane
load('xilo.mat');

f = 44100; %frecventa data de xilo reprezentat in Hertz
T = 1/f; %perioada se calculeaza cu relatia asta

x = yx(8000:10000); %luam esantioanele de la 8000 la 10000

rx = xcorr(x, 'biased'); %facem autocorelatia
plot(rx);



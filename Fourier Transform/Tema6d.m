N = 100;
n = 0:N-1; %alegem suportul de N elemente
w_0 = pi/8 %alegem pulsatia pi/8 ca in exercitii anterior
a = 0.01:.01:1.5; %valorii amplitudini pana in cea ce determina pulsatia 
%cu precizie suficienta din graficul de densitate spectrala

e_n = randn(1, N);
x_n = cos(w_0 * n);


%ca sa folosesc relatia SNR trebuie sa fac autocorelatia

rx = xcorr(x_n);

%luam toate valori a lui a 

for i = 1:length(a)
    v = a(i) * e_n;
    rv = xcorr(v);
    SNR(i) = 20 * log(abs(rx/rv)); %relatia SNR
end

figure;
plot(a, SNR, 'r');
title('Graficul signal to noise ratio');

%deci cum se vede prin grafic aceasta variaza exponential
%creste zgomot la amplificarii <1.5
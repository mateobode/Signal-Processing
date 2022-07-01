
M = 16;
om_c = 0.7;

%% pct a) %Trasarea raspunsurilor la impuls ale cele 9 ferestre

% dreptunghiulara
w = boxcar(M);
figure (1);
subplot(3,3,1)
stem(w);
title('Rectangular');

%triunghiulara
w1 = triang(M);
subplot(3,3,2)
stem(w1);
title('Triangular');

%blackman
w2 = blackman(M);
subplot(3,3,3);
stem(w2);
title('Blackman');

%chebwin
r = 90;
w3 = chebwin(M, r);
subplot(3,3,4);
stem(w3);
title('Chebysev');

%hamming
w4 = hamming(M);
subplot(3,3,5);
stem(w4);
title('Hamming');

%hanning
w5 = hanning(M);
subplot(3,3,6);
stem(w5);
title('Hanning');

%kaiser
beta = 9;
w6 = kaiser(M, beta);
subplot(3,3,7);
stem(w6);
title('Kaiser');

%lanczos
M = 16;
L = 1;
w_7 = @(n,L,M)((sin(2*pi*(2*n - M + 1)/(2*(M-1))))/(2*pi*(2*n - M + 1)/(2*(M-1))))^L;
w7 = 0;

for n = 1 : M-1
    w7 =[w7 ; w_7(n,L,M)];
end

subplot(3,3,8);
stem(w7);
title('Lanczos');

%tukey
alfa = 33/100;
w8 = tukeywin(M, alfa);
subplot(3,3,9);
stem(w8);
title('Tukey');

%% pct b) Normare si calcul raspuns in frecventa

figure (2);
w = w/sum(w);
[F, om_c] = freqz(w);
subplot(3,3,1)
plot(om_c,mag2db(abs(F)));
title('Rectangular');

w1 = w1/sum(w1);
[F1, om_c] = freqz(w1);
subplot(3,3,2)
plot(om_c,mag2db(abs(F1)));
title('Triangular');

w2 = w2/sum(w2);
[F2, om_c] = freqz(w2);
subplot(3,3,3)
plot(om_c,mag2db(abs(F2)));
title('Blackman');

w3 = w3/sum(w3);
[F3, om_c] = freqz(w3);
subplot(3,3,4)
plot(om_c,mag2db(abs(F3)));
title('Chebyshev');

w4 = w4/sum(w4);
[F4, om_c] = freqz(w4);
subplot(3,3,5)
plot(om_c,mag2db(abs(F4)));
title('Hamming');

w5 = w5/sum(w5);
[F5, om_c] = freqz(w5);
subplot(3,3,6)
plot(om_c,mag2db(abs(F5)));
title('Hanning');

w6 = w6/sum(w6);
[F6, om_c] = freqz(w6);
subplot(3,3,7)
plot(om_c,mag2db(abs(F6)));
title('Kaiser');

w7 = w7/sum(w7);
[F7, om_c] = freqz(w7);
subplot(3,3,8)
plot(om_c,mag2db(abs(F7)));
title('Lanczos');

w8 = w8/sum(w8);
[F8, om_c] = freqz(w8);
subplot(3,3,9)
plot(om_c,mag2db(abs(F8)));
title('Tukey');

%in general am observat ca latimea lobului principal si inaltimea lobilor
%secundari sunt in relatie inversa, adica un lob principal ingust e insotit
%cu lobi secundari inalti iar un lob principal lat apare impreuna cu lobi
%secundari scunzi
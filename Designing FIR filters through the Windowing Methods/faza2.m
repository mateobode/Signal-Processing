
M = 16;
om_c = 0.4;

%% pct a) %Proiectarea unui FTJ folosin metoda ferestrei

figure(1);

% dreptunghiulara
w = boxcar(M+1);
h = fir1(M, om_c, w);
H = freqz(h, om_c);

subplot(3,3,1)
plot(mag2db(abs(H)));
title('Rectangular');

%triunghiulara
w1 = triang(M+1);
h1 = fir1(M, om_c, w1);
H1 = freqz(h1, om_c);
subplot(3,3,2)
plot(mag2db(abs(H1)));
title('Triangular');

%blackman
w2 = blackman(M+1);
h2 = fir1(M, om_c, w2);
H2 = freqz(h2, om_c);
subplot(3,3,3);
plot(mag2db(abs(H2)));
title('Blackman');

%chebwin
r = 90;
w3 = chebwin(M+1, r);
h3 = fir1(M, om_c, w3);
H3 = freqz(h3, om_c);
subplot(3,3,4);
plot(mag2db(abs(H3)));
title('Chebysev');

%hamming
w4 = hamming(M+1);
h4 = fir1(M, om_c, w4);
H4 = freqz(h4, om_c);
subplot(3,3,5);
plot(mag2db(abs(H4)));
title('Hamming');

%hanning
w5 = hanning(M+1);
h5 = fir1(M, om_c, w5);
H5 = freqz(h5, om_c);
subplot(3,3,6);
plot(mag2db(abs(H5)));
title('Hanning');

%kaiser
beta = 9;
w6 = kaiser(M+1, beta);
h6 = fir1(M, om_c, w6);
H6 = freqz(h6, om_c);
subplot(3,3,7);
plot(mag2db(abs(H6)));
title('Kaiser');

%lanczos
M = 16;
L = 1;
w_7 = @(n,L,M)((sin(2*pi*(2*n - M + 1)/(2*(M-1))))/(2*pi*(2*n - M + 1)/(2*(M-1))))^L;
w7 = 0;

for n = 1 : M
    w7 =[w7 ; w_7(n,L,M)];
end

h7 = fir1(M, om_c, w7);
H7 = freqz(h7, om_c);
subplot(3,3,8);
plot(mag2db(abs(H7)));
title('Lanczos');

%tukey
alfa = 33/100;
w8 = tukeywin(M+1, alfa);
h8 = fir1(M, om_c, w8);
H8 = freqz(h8, om_c);
subplot(3,3,9);
plot(mag2db(abs(H8)));
title('Tukey');

%% pct b) Marirea ordinul filtrului

M1 = 24;
M2 = 32;

figure(2);

%hanning
w_hanning = hanning(M1+1);
h_hanning = fir1(M1, om_c, w_hanning);
H_hanning = freqz(h_hanning, om_c);
subplot(1,2,1);
plot(mag2db(abs(H_hanning)));
title('M=24');

w_hanning1 = hanning(M2+1);
h_hanning1 = fir1(M2, om_c, w_hanning1);
H_hanning1 = freqz(h_hanning1, om_c);
subplot(1,2,2);
plot(mag2db(abs(H_hanning1)));
title('M=32');

%se vede mai multe lobi secundari daca marim ordinul filtrului in graficul
%lui de caracteristica de frecventa.
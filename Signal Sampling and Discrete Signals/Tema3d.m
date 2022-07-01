M = 50;
Ts = 1;
w1 = pi/3;
w2 = 2*pi + pi/3;

figure('Name', 'sinusoida cu w1');
x1 = esantionare(w1, Ts, M); %esantionarea sinusoidei cu w1
rep_grafic(w1, Ts, M); 
hold on;
figure('Name', 'sinusoida cu w2');
x2 = esantionare(w2, Ts, M); %esantionarea sinusoidei cu w2
rep_grafic(w2, Ts, M);
hold off;

%diferenta dintre sinusoidele este ca pe cea x2, la frecventa w2 este
%adunata cu 2*pi, dar asta nu face diferenta pe grafice pentru ca sin 2*pi
%este egal cu 0
%orice sinusoida cu frecventa 2*pi*n + pi/3, n fiind un numar natural o sa
%aiba sinusoida discreta identica cu cea cu frecventa pi/3
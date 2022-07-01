N = 100;
n = 0:N-1 %alegem suportul cu N elemente

e = randn(1, N); %generam semnalul pseudo-zgomot alb e de lungime N

w = -pi:.01:pi;

X_e = freqz(e, 1, w);

%generam densitatea spectrala de putere folosind relatia (2.13) din lab 2
%se numeste si periodograma

fi_e = (1/N) * (abs(X_e).^2);

figure;
plot(w, fi_e, 'r'); %generam graficul periodogramei pt N

%marim N = 200

N1 = 200;

e1 = randn(1, N1); %generam semnalul pseudo-zgomot alb de lungime N1

X_e1 = freqz(e1, 1, w);

fi_e1 = (1/N) * (abs(X_e1).^2);

figure;
plot(w, fi_e1, 'g'); %generam graficul periodogramei pt N1

%marim N = 300

N2 = 300;

e2 = randn(1, N2); %generam semnalul pseudo-zgomot alb de lungime N2

X_e2 = freqz(e2, 1, w);

fi_e2 = (1/N) * (abs(X_e2).^2);

figure;
plot(w, fi_e2, 'b'); %generam graficul periodogramei pt N2

%marim N = 400

N3 = 400;

e3 = randn(1, N3); %generam semnalul pseudo-zgomot alb de lungime N3

X_e3 = freqz(e3, 1, w);

fi_e3 = (1/N) * (abs(X_e3).^2);

figure;
plot(w, fi_e3, 'y'); %generam graficul periodogramei pt N3

%graficul densitatii spectrale de putere are un aspect tipic care nu se
%modifica daca marim N
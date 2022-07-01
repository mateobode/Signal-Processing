N = 30; %lungimea suportului
n = 0:N-1; %suportul

imp_unit = eye(1,N); %impulsul unitar

figure ('Name', 'impulsul unitar');
plot(imp_unit);

hold on;

figure ('Name', 'treapta unitara');
tr_unit = ones(1,N); %treapta unitara
plot(tr_unit);

hold on;

alfa = 0.5;
figure('Name', 'exponentiala');
e = alfa.^n; %semnal exponential
plot(e);

hold on;

w = pi/4; %pulsatia
phi = 2 * pi/6; %faza
figure('Name', 'sinusoida reala');
sin_real = sin(w * n + phi); %sinusoidala reala 
plot(sin_real);
%hold on;
%stem(sin_real);

hold on;

j = sqrt(-1); 
sin_compl = exp(j * (w * n + phi)); %sinusoidala complexa
figure('Name', 'sinusoida complexa');
plot(sin_compl);
hold on;
%stem(sin_compl);

t = 0:0.1:10;
semnal = 2 * sin(t); %semnal

figure('Name', 'semnal real'); 
plot(t, semnal); %grafic in real (continuu)

hold on;

figure('Name', 'semnal discret');
stem(n, sin_real); %grafic in discret

hold off;
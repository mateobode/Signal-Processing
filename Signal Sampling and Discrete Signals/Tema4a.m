N = 20; %N reprezinta numarul de elemente al vectorului x

x = randn(1,N); %am generat un semnal pseudo-aleator cu vector x
m = mean(x); %am calculat media semnalului

L = 10; %am luat L sa fie mai mic decat N

rx = xcorr(x, L, 'biased'); %estimarea primele L<N valori de autocorelatie

%reprezint grafic autocorelatia
figure('Name', 'Auto-corelatia N');
plot(rx);
hold on
stem(rx);
hold off

N1 = 200;

x1 = randn(1, N1);
m1 = mean(x1);

rx1 = xcorr(x1, L, 'biased');

figure('Name', 'Auto-corelatia N1');
plot(rx1);
hold on
stem(rx1);
hold off

%observ ca autocorelatia este simetrica pentru ca este pe intervalul [-L,L]
%r[k] = r[-k]

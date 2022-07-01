w1 = pi/3;
w2 = 2*pi + pi/3;
M = 100;
m = 0:M-1;

figure
x1 = sin(w1 * m);
plot(x1);
hold on
figure
x2 = sin(w2 * m);
plot(x2);
hold off;

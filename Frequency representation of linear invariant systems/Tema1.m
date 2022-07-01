%% PCT a)
   
j = sqrt(-1);
theta = pi/6; %am ales theta pi/6
w = -pi:.001:pi; %am ales intervalul lui w la [-pi;pi]

%% r = 0

r = 0;
c = r * exp(j*theta);

b = [1 -c ];
h = freqz(b, 1, w);
dB = mag2db(abs(h));

%% r = 0.25

r1 = 0.25;
c1 = r1 * exp(j*theta);

b1 = [1 -c1];
h1 = freqz(b1, 1, w);
dB1 = mag2db(abs(h1));

%% r = 0.5

r2 = 0.5;
c2 = r2 * exp(j*theta);

b2 = [1 -c2];
h2 = freqz(b2, 1, w);
dB2 = mag2db(abs(h2));

%% r = 0.75

r3 = 0.75;
c3 = r3 * exp(j*theta);

b3 = [1 -c3];
h3 = freqz(b3, 1, w);
dB3 = mag2db(abs(h3));

%% r = 1

r4 = 1;
c4 = r4 * exp(j*theta);

b4 = [1 -c4];
h4 = freqz(b4, 1, w);
dB4 = mag2db(abs(h4));

%% plotare caracteristica de frecventa pe scala liniara

figure;
subplot(3, 1, 1)
plot(w, abs(h), 'LineWidth', 1.3), hold on
plot(w, abs(h1), 'LineWidth', 1.3), hold on
plot(w, abs(h2), 'LineWidth', 1.3), hold on
plot(w, abs(h3), 'LineWidth', 1.3), hold on
plot(w, abs(h4), 'LineWidth', 1.3), hold off
xlabel('\omega')
ylabel('Amplitudine')
xlim([-pi pi])
legend('r=0', 'r=0.25', 'r=0.5', 'r=0.75', 'r=1');
title('Grafic Amplitudine');
grid on;

%% plotare caracteristica de frecventa pe scala semilogaritmica

subplot(3, 1, 2)
plot(w, dB, 'LineWidth', 1.3), hold on
plot(w, dB1, 'LineWidth', 1.3), hold on
plot(w, dB2, 'LineWidth', 1.3), hold on
plot(w, dB3, 'LineWidth', 1.3), hold on
plot(w, dB4, 'LineWidth', 1.3), hold off
xlabel('\omega')
ylabel('Amplitudine[dB]')
xlim([-pi pi])
legend('r=0', 'r=0.25', 'r=0.5', 'r=0.75', 'r=1');
title('Grafic Amplitudine[dB]');
grid on;

%% plotare faza

subplot(3,1,3)
plot(w, angle(h), 'LineWidth', 1.3), hold on
plot(w, angle(h1), 'LineWidth', 1.3), hold on
plot(w, angle(h2), 'LineWidth', 1.3), hold on
plot(w, angle(h3), 'LineWidth', 1.3), hold on
plot(w, angle(h4), 'LineWidth', 1.3), hold off
xlabel('Frecventa Normalizata')
ylabel('Faza')
xlim([-pi pi])
legend('r=0', 'r=0.25', 'r=0.5', 'r=0.75', 'r=1');
title('Grafic Faza');
grid on;

%% plotare zerouri

figure('Name', 'Grafic zerouri pt theta');
subplot(3, 2, 1)
zplane(b, 1)
title('In cazul r=0')
subplot(3, 2, 2)
zplane(b1, 1)
title('In cazul r=0.25')
subplot(3, 2, 3)
zplane(b2, 1)
title('In cazul r=0.5')
subplot(3, 2, 4)
zplane(b3, 1)
title('In cazul r=0.75')
subplot(3, 2, 5)
zplane(b4, 1)
title('In cazul r=1')

%% PCT b)

theta1 = 2*pi/8;

%% r = 0

r5 = 0;
c5 = r5 * exp(j*theta1);

b5 = [1 -c5];
h5 = freqz(b5, 1, w);
dB5 = mag2db(abs(h5));

%% r = 0.25

r6 = 0.25;
c6 = r6 * exp(j*theta1);

b6 = [1 -c6];
h6 = freqz(b6, 1, w);
dB6 = mag2db(abs(h6));

%% r = 0.5

r7 = 0.5;
c7 = r7 * exp(j*theta1);

b7 = [1 -c7];
h7 = freqz(b7, 1, w);
dB7 = mag2db(abs(h7));

%% r = 0.75

r8 = 0.75;
c8 = r8 * exp(j*theta1);

b8 = [1 -c8];
h8 = freqz(b8, 1, w);
dB8 = mag2db(abs(h8));

%% r = 1

r9 = 1;
c9 = r9 * exp(j*theta1);

b9 = [1 -c9];
h9 = freqz(b9, 1, w);
dB9 = mag2db(abs(h9));

%% plotare caracteristica de frecventa pe scala liniara

figure;
subplot(3,1,1)
plot(w, abs(h5), 'LineWidth', 1.3), hold on
plot(w, abs(h6), 'LineWidth', 1.3), hold on
plot(w, abs(h7), 'LineWidth', 1.3), hold on
plot(w, abs(h8), 'LineWidth', 1.3), hold on
plot(w, abs(h9), 'LineWidth', 1.3), hold off
xlabel('\omega')
ylabel('Amplitudine')
xlim([-pi pi])
legend('r=0', 'r=0.25', 'r=0.5', 'r=0.75', 'r=1');
title('Grafic Amplitudine theta1');
grid on;

%% plotare caracteristica de frecventa pe scala semilogaritmica

subplot(3,1,2)
plot(w, dB5, 'LineWidth', 1.3), hold on
plot(w, dB6, 'LineWidth', 1.3), hold on
plot(w, dB7, 'LineWidth', 1.3), hold on
plot(w, dB8, 'LineWidth', 1.3), hold on
plot(w, dB9, 'LineWidth', 1.3), hold off
xlabel('\omega')
ylabel('Amplitudine[dB]')
xlim([-pi pi])
legend('r=0', 'r=0.25', 'r=0.5', 'r=0.75', 'r=1');
title('Grafic Amplitudine[dB] theta1');
grid on;

%% plotare faza

subplot(3,1,3)
plot(w, angle(h5), 'LineWidth', 1.3), hold on
plot(w, angle(h6), 'LineWidth', 1.3), hold on
plot(w, angle(h7), 'LineWidth', 1.3), hold on
plot(w, angle(h8), 'LineWidth', 1.3), hold on
plot(w, angle(h9), 'LineWidth', 1.3), hold off
xlabel('Frecventa Normalizata')
ylabel('Faza')
xlim([-pi pi])
legend('r=0', 'r=0.25', 'r=0.5', 'r=0.75', 'r=1');
title('Grafic Faza theta1');
grid on;

%% plotare zerouri theta1

figure('Name', 'Grafic zerouri pt theta1');
subplot(3, 2, 1)
zplane(b5, 1)
title('In cazul r=0')
subplot(3, 2, 2)
zplane(b6, 1)
title('In cazul r=0.25')
subplot(3, 2, 3)
zplane(b7, 1)
title('In cazul r=0.5')
subplot(3, 2, 4)
zplane(b8, 1)
title('In cazul r=0.75')
subplot(3, 2, 5)
zplane(b9, 1)
title('In cazul r=1')
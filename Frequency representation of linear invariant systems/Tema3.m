
%%
j = sqrt(-1);
theta = pi/6; %am ales theta pi/6
w = -pi:0.01:pi; %am ales intervalul lui w la [-pi;pi]

%% r = 0;

r = 0;
c = -2*r*cos(theta);
c_n = r.^2;

a = [1 c c_n];
g = freqz(1, a, w);
dB = mag2db(abs(g));

%% r = 0.25

r1 = 0.25;
c1 = -2*r1*cos(theta);
c_n1 = r1^2;

a1 = [1 c1 c_n1];
g1 = freqz(1, a1, w);
dB1 = mag2db(abs(g1));

%% r = 0.5

r2 = 0.5;
c2 = -2*r2*cos(theta);
c_n2 = r2.^2;
%hz2 = (1 - c2) * (1 - c_n2);

a2 = [1 c2 c_n2];
g2 = freqz(1, a2, w);
dB2 = mag2db(abs(g2));

%% r = 0.75

r3 = 0.75;
c3 = -2*r3*cos(theta);
c_n3 = r3.^2;
%hz3 = (1 - c3) * (1 - c_n3);

a3 = [1 c3 c_n3];
g3 = freqz(1, a3, w);
dB3 = mag2db(abs(g3));

%% r = 1

r4 = 1;
c4 = -2*r4*cos(theta);
c_n4 = r4.^2;
%hz4 = (1 - c4) * (1 - c_n4);

a4 = [1 c4 c_n4];
g4 = freqz(1, a4, w);
dB4 = mag2db(abs(g4));

%% plotare caracteristica de frecventa pe scala liniara

figure;
subplot(3,1,1)
plot(w, abs(g), 'LineWidth', 1.3), hold on
plot(w, abs(g1), 'LineWidth', 1.3), hold on
plot(w, abs(g2), 'LineWidth', 1.3), hold on
plot(w, abs(g3), 'LineWidth', 1.3), hold on
plot(w, abs(g4), 'LineWidth', 1.3), hold off
xlabel('\omega')
ylabel('Amplitudine')
xlim([-pi pi])
ylim([-0.5 30])
legend('r=0', 'r=0.25', 'r=0.5', 'r=0.75', 'r=1');
title('Grafic Amplitudine');
grid on;

%% plotare caracteristica de frecventa pe scala semilogaritmica

subplot(3,1,2)
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
plot(w, angle(g), 'LineWidth', 1.3), hold on
plot(w, angle(g1), 'LineWidth', 1.3), hold on
plot(w, angle(g2), 'LineWidth', 1.3), hold on
plot(w, angle(g3), 'LineWidth', 1.3), hold on
plot(w, angle(g4), 'LineWidth', 1.3), hold off
xlabel('Frecventa Normalizata')
ylabel('Faza')
xlim([-pi pi])
legend('r=0', 'r=0.25', 'r=0.5', 'r=0.75', 'r=1');
title('Grafic Faza');
grid on;

%% plotare zerouri

figure('Name', 'Grafic zerouri pt theta');
subplot(3, 2, 1)
zplane(a, 1)
title('In cazul r=0')
subplot(3, 2, 2)
zplane(a1, 1)
title('In cazul r=0.25')
subplot(3, 2, 3)
zplane(a2, 1)
title('In cazul r=0.5')
subplot(3, 2, 4)
zplane(a3, 1)
title('In cazul r=0.75')
subplot(3, 2, 5)
zplane(a4, 1)
title('In cazul r=1')

%% 

theta1 = 2*pi/8;

%% r = 0

r5 = 0;
c5 = -2*r5*cos(theta1);
c_n5 = r5.^2;

a5 = [1 c5 c_n5];
g5 = freqz(a5, 1, w);
dB5 = mag2db(abs(g5));

%% r = 0.25

r6 = 0.25;
c6 = -2*r6*cos(theta1);
c_n6 = r6.^2;

a6 = [1 c6 c_n6];
g6 = freqz(1, a6, w);
dB6 = mag2db(abs(g6));

%% r = 0.5

r7 = 0.5;
c7 = -2*r7*cos(theta1);
c_n7 = r7.^2;

a7 = [1 c7 c_n7];
g7 = freqz(1, a7, w);
dB7 = mag2db(abs(g7));

%% r = 0.75

r8 = 0.75;
c8 = -2*r8*cos(theta1);
c_n8 = r8.^2;

a8 = [1 c8 c_n8];
g8 = freqz(1, a8, w);
dB8 = mag2db(abs(g8));

%% r = 1

r9 = 1;
c9 = -2*r9*cos(theta1);
c_n9 = r9.^2;

a9 = [1 c9 c_n9];
g9 = freqz(1, a9, w);
dB9 = mag2db(abs(g9));

%% plotare caracteristica de frecventa pe scala liniara

figure;
subplot(3,1,1)
plot(w, abs(g5), 'LineWidth', 1.3), hold on
plot(w, abs(g6), 'LineWidth', 1.3), hold on
plot(w, abs(g7), 'LineWidth', 1.3), hold on
plot(w, abs(g8), 'LineWidth', 1.3), hold on
plot(w, abs(g9), 'LineWidth', 1.3), hold off
xlabel('\omega / \pi')
ylabel('Amplitudine')
xlim([-pi pi])
ylim([-0.5 30])
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
xlabel('\omega / \pi')
ylabel('Amplitudine[dB]')
xlim([-pi pi])
legend('r=0', 'r=0.25', 'r=0.5', 'r=0.75', 'r=1');
title('Grafic Amplitudine[dB] theta1');
grid on;

%% plotare faza

subplot(3,1,3)
plot(w, angle(g5), 'LineWidth', 1.3), hold on
plot(w, angle(g6), 'LineWidth', 1.3), hold on
plot(w, angle(g7), 'LineWidth', 1.3), hold on
plot(w, angle(g8), 'LineWidth', 1.3), hold on
plot(w, angle(g9), 'LineWidth', 1.3), hold off
xlabel('Frecventa Normalizata')
ylabel('Faza')
xlim([-pi pi])
legend('r=0', 'r=0.25', 'r=0.5', 'r=0.75', 'r=1');
title('Grafic Faza theta1');
grid on;

%% plotare zerouri theta1

figure('Name', 'Grafic zerouri pt theta1');
subplot(3, 2, 1)
zplane(a5, 1)
title('In cazul r=0')
subplot(3, 2, 2)
zplane(a6, 1)
title('In cazul r=0.25')
subplot(3, 2, 3)
zplane(a7, 1)
title('In cazul r=0.5')
subplot(3, 2, 4)
zplane(a8, 1)
title('In cazul r=0.75')
subplot(3, 2, 5)
zplane(a9, 1)
title('In cazul r=1')

%% PCT b)

g0 = 1./(1 - c*0) * (1 - c_n*0);

gstar = g/g0;
gstar1 = g1/g0;
gstar2 = g2/g0;
gstar3 = g3/g0;
gstar4 = g4/g0;
gstar5 = g5/g0;
gstar6 = g6/g0;
gstar7 = g7/g0;
gstar8 = g8/g0;
gstar9 = g9/g0;

%% plotare caracteristica de frecventa pe scala liniara (normata)

figure;
subplot(3,1,1)
plot(w, abs(gstar), 'LineWidth', 1.3), hold on
plot(w, abs(gstar1), 'LineWidth', 1.3), hold on
plot(w, abs(gstar2), 'LineWidth', 1.3), hold on
plot(w, abs(gstar3), 'LineWidth', 1.3), hold on
plot(w, abs(gstar4), 'LineWidth', 1.3), hold off
xlabel('\omega')
ylabel('Amplitudine')
xlim([-pi pi])
ylim([-0.5 30])
legend('r=0', 'r=0.25', 'r=0.5', 'r=0.75', 'r=1');
title('Grafic Amplitudine Normata');
grid on;

%% plotare caracteristica de frecventa pe scala semilogaritmica (normata)

subplot(3,1,2)
plot(w, mag2db(abs(gstar)), 'LineWidth', 1.3), hold on
plot(w, mag2db(abs(gstar1)), 'LineWidth', 1.3), hold on
plot(w, mag2db(abs(gstar2)), 'LineWidth', 1.3), hold on
plot(w, mag2db(abs(gstar3)), 'LineWidth', 1.3), hold on
plot(w, mag2db(abs(gstar4)), 'LineWidth', 1.3), hold off
xlabel('\omega')
ylabel('Amplitudine[dB]')
xlim([-pi pi])
ylim([0 60])
legend('r=0', 'r=0.25', 'r=0.5', 'r=0.75', 'r=1');
title('Grafic Amplitudine[dB] Normata');
grid on;

%% plotare faza (normata)

subplot(3,1,3)
plot(w, angle(gstar), 'LineWidth', 1.3), hold on
plot(w, angle(gstar1), 'LineWidth', 1.3), hold on
plot(w, angle(gstar2), 'LineWidth', 1.3), hold on
plot(w, angle(gstar3), 'LineWidth', 1.3), hold on
plot(w, angle(gstar4), 'LineWidth', 1.3), hold off
xlabel('Frecventa Normalizata')
ylabel('Faza')
xlim([-pi pi])
legend('r=0', 'r=0.25', 'r=0.5', 'r=0.75', 'r=1');
title('Grafic Faza Normata');
grid on;

%% plotare caracteristica de frecventa pe scala liniara pt theta1 (normata)

figure;
subplot(3,1,1)
plot(w, abs(gstar5), 'LineWidth', 1.3), hold on
plot(w, abs(gstar6), 'LineWidth', 1.3), hold on
plot(w, abs(gstar7), 'LineWidth', 1.3), hold on
plot(w, abs(gstar8), 'LineWidth', 1.3), hold on
plot(w, abs(gstar9), 'LineWidth', 1.3), hold off
xlabel('\omega')
ylabel('Amplitudine')
xlim([-pi pi])
ylim([-0.5 30])
legend('r=0', 'r=0.25', 'r=0.5', 'r=0.75', 'r=1');
title('Grafic Amplitudine Normata theta1');
grid on;

%% plotare caracteristica de frecventa pe scala semilogaritmica pt theta 1 (normata)

subplot(3,1,2)
plot(w, mag2db(abs(gstar5)), 'LineWidth', 1.3), hold on
plot(w, mag2db(abs(gstar6)), 'LineWidth', 1.3), hold on
plot(w, mag2db(abs(gstar7)), 'LineWidth', 1.3), hold on
plot(w, mag2db(abs(gstar8)), 'LineWidth', 1.3), hold on
plot(w, mag2db(abs(gstar9)), 'LineWidth', 1.3), hold off
xlabel('\omega')
ylabel('Amplitudine[dB]')
xlim([-pi pi])
ylim([0 60])
legend('r=0', 'r=0.25', 'r=0.5', 'r=0.75', 'r=1');
title('Grafic Amplitudine[dB] Normata theta1');
grid on;

%% plotare faza pt theta1 (normata)

subplot(3,1,3)
plot(w, angle(gstar5), 'LineWidth', 1.3), hold on
plot(w, angle(gstar6), 'LineWidth', 1.3), hold on
plot(w, angle(gstar7), 'LineWidth', 1.3), hold on
plot(w, angle(gstar8), 'LineWidth', 1.3), hold on
plot(w, angle(gstar9), 'LineWidth', 1.3), hold off
xlabel('Frecventa Normalizata')
ylabel('Faza')
xlim([-pi pi])
legend('r=0', 'r=0.25', 'r=0.5', 'r=0.75', 'r=1');
title('Grafic Faza Normata theta1');
grid on;
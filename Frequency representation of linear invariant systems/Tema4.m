%%
w = -pi:.01:pi; %am ales intervalul lui w la [-pi;pi]

%% a)

c1 = 0.9;
c2 = 0.8;
c3 = 0.7;

d1 = 0.745;
d2 = 0.83;

b = [c1 c2 c3]';
a = [d1 d2]';
h = freqz(b,a,w);

H_dB = abs(20*log10(abs(b/a)) + 20 * log10(abs(1 -c1)) + 20 * log10(abs(1 -c2))+ 20 * log10(abs(1 -c3)) - 20 * log10(abs(1 -d1)) - 20 * log10(abs(1 -d2)));

flag = isstable(h);

dB = mag2db(abs(h));

figure;
subplot(3, 1, 1)
plot(w,abs(h),'LineWidth',1.3);
xlabel('\omega')
ylabel('Amplitudine')
subplot(3, 1, 2)
plot(w, dB,'LineWidth',1.3);
xlabel('\omega')
ylabel('Amplitudine[dB]')
subplot(3, 1, 3)
plot(w, angle(h), 'LineWidth',1.3);
xlabel('Frecventa normalizata')
ylabel('Faza')

figure;
subplot(2,1,1)
zplane(b, a);
subplot(2,1,2)
pzmap(b, a)

%% b)

c_1 = 0.25;
c_2 = 0.12;
c_3 = 0.05;
d_1 = 0.3;
d_2 = 0.002;

b1 = [c_1 c_2 c_3]';
a1 = [d_1 d_2]';
h1 = freqz(b1,a1,w);

H1_dB = abs(20*log10(abs(b1/a1)) + 20 * log10(abs(1 -c_1)) + 20 * log10(abs(1 -c_2))+ 20 * log10(abs(1 -c_3)) - 20 * log10(abs(1 -d_1)) - 20 * log10(abs(1 -d_2)));

flag1 = isstable(h1);

dB1 = mag2db(abs(h1));

figure;
subplot(3, 1, 1)
plot(w,abs(h1),'LineWidth',1.3);
xlabel('\omega')
ylabel('Amplitudine')
subplot(3, 1, 2)
plot(w, dB1,'LineWidth',1.3);
xlabel('\omega')
ylabel('Amplitudine[dB]')
subplot(3, 1, 3)
plot(w, angle(h1),'LineWidth',1.3);
xlabel('Frecventa normalizata')
ylabel('Faza')

figure;
subplot(2,1,1)
zplane(b1, a1);
subplot(2,1,2)
pzmap(b1, a1)
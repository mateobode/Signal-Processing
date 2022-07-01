load('sunet_a.mat');
load('sunet_i.mat');
load('sunet_s.mat');

f = 8000; %semnalele au aceasi frecventa
T = 1 / f; %perioada

%am reprezentat grafic autocorelatia celei 3 semnale a, i si s
figure('Name', 'Auto-corelatia sunet a');
ra = xcorr(ya, 'biased');
plot(ra);
hold on
figure('Name', 'Auto-corelatia sunet i');
ri = xcorr(yi, 'biased');
plot(ri);
hold on
figure('Name', 'Auto-corelatia sunet s');
rs = xcorr(ys, 'biased');
plot(rs);
hold off

%ca sa vedem daca semnalul sunet_s are caracteristice apropiate zgomotului
%alb este suficient ca sa aiba o medie aproape nula, asa ca calculam media
%semnaluli si vedem

ms = mean(rs);

%vedem ca media este aproape nula si acum putem sa spunem ca sunet s are
%caracteristicii de zgomot alb




%% date
M = 60;
om_p = 0.3;
om_s = 0.4;
delta_p = 0.5;
delta_s = 2;

om_c = (om_s + om_p)/2;

%% proba de algoritm
%folosind fereastra trianghiulara
w = triang(M+1);
h = fir1(M, om_c, w);

%pt banda de trecere
grila_frecv_p = 0:om_p/1000:om_p;
H = freqz(h, 1, grila_frecv_p);
delta_preal = max(abs(1 - abs(H)));

%pt banda de stopare
grila_frecv_s = om_s*pi:om_s*pi/1000:pi;
H = freqz(h, 1, grila_frecv_s);
delta_sreal = max(abs(H));

%verificam daca am obtinut un filtrul valid PPFTI
if delta_preal < delta_p && delta_sreal < delta_s
    valid = 1;
else
    valid = 0;
end

%% verificare functie de la a
%folosind fereastra triunghiulara
w = triang(M+1);
h = fir1(M, om_c, w);
[delta_sreal delta_preal] = calc_deltele(h, om_p, om_s);

%% verificare functie de la b
M = 80;
om_c = 0.4;
fereastra = 1;

[h, delta_sreal, delta_preal, valid] = proiectare(M, om_c, fereastra);

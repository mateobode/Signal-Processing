
om_p = 0.3;
om_s = 0.4;
delta_p = 0.05;
delta_s = 0.05;

%% rectangulara
M = 'ord_min';
fereastra = 0;
[h, delta_sreal, delta_preal, M, valid] = proiectare_4(M, om_p, om_s, delta_p, delta_s, fereastra);
delta_re=delta_sreal + delta_preal;

%% triunghiulara
M = 'ord_min';
fereastra = 1;
[h, delta_sreal, delta_preal, M, valid] = proiectare_4(M, om_p, om_s, delta_p, delta_s, fereastra);
delta_tr=delta_sreal + delta_preal;

%% blackman
M = 'ord_min';
fereastra = 2;
[h, delta_sreal, delta_preal, M, valid] = proiectare_4(M, om_p, om_s, delta_p, delta_s, fereastra);
delta_bl=delta_sreal + delta_preal;

%% chebwin
M = 'ord_min';
fereastra = 3;
[h, delta_sreal, delta_preal, M, valid] = proiectare_4(M, om_p, om_s, delta_p, delta_s, fereastra);
delta_chw=delta_sreal + delta_preal;

%% hamming
M = 'ord_min';
fereastra = 4;
[h, delta_sreal, delta_preal, M, valid] = proiectare_4(M, om_p, om_s, delta_p, delta_s, fereastra);
delta_ham=delta_sreal + delta_preal;

%% hanning
M = 'ord_min';
fereastra = 5;
[h, delta_sreal, delta_preal, M, valid] = proiectare_4(M, om_p, om_s, delta_p, delta_s, fereastra);
delta_han=delta_sreal + delta_preal;

%% kaiser
M = 'ord_min';
fereastra = 6;
[h, delta_sreal, delta_preal, M, valid] = proiectare_4(M, om_p, om_s, delta_p, delta_s, fereastra);
delta_ka=delta_sreal + delta_preal;
freqz(h, 1, 0:pi/1000:pi);

%% lanczos
M = 'ord_min';
fereastra = 7;
[h, delta_sreal, delta_preal, M, valid] = proiectare_4(M, om_p, om_s, delta_p, delta_s, fereastra);
delta_la=delta_sreal + delta_preal;
freqz(h, 1, 0:pi/1000:pi);

%% tukey
M = 'ord_min';
fereastra = 8;
[h, delta_sreal, delta_preal, M, valid] = proiectare_4(M, om_p, om_s, delta_p, delta_s, fereastra);
delta_tuk=delta_sreal + delta_preal;

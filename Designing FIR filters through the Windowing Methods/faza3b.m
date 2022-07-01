M = 80;
om_p = 0.3;
om_s = 0.5;
om_c = (om_s + om_p)/2;
delta_p = 0.05;
delta_s = 0.05;

%% rectangular
w = boxcar(M+1);
h = fir1(M, om_c, w);

[delta_sreal, delta_preal] = calc_deltele(h, om_p, om_s);

%verificam daca am obtinut un filtrul valid PPFTI
if delta_preal < delta_p && delta_sreal < delta_s
    valid = 1;
else
    valid = 0;
end

%% triunghiular
w = triang(M+1);
h = fir1(M, om_c, w);

[delta_sreal, delta_preal] = calc_deltele(h, om_p, om_s);

%verificam daca am obtinut un filtrul valid PPFTI
if delta_preal < delta_p && delta_sreal < delta_s
    valid = 1;
else
    valid = 0;
end

%% blackman
w = blackman(M+1);
h = fir1(M, om_c, w);

[delta_sreal, delta_preal] = calc_deltele(h, om_p, om_s);

%verificam daca am obtinut un filtrul valid PPFTI
if delta_preal < delta_p && delta_sreal < delta_s
    valid = 1;
else
    valid = 0;
end

%% chebwin
r = 90;
w = chebwin(M+1, r);

h = fir1(M, om_c, w);

[delta_sreal, delta_preal] = calc_deltele(h, om_p, om_s);

%verificam daca am obtinut un filtrul valid PPFTI
if delta_preal < delta_p && delta_sreal < delta_s
    valid = 1;
else
    valid = 0;
end

%% hamming
w = hamming(M+1);
h = fir1(M, om_c, w);

[delta_sreal, delta_preal] = calc_deltele(h, om_p, om_s);

%verificam daca am obtinut un filtrul valid PPFTI
if delta_preal < delta_p && delta_sreal < delta_s
    valid = 1;
else
    valid = 0;
end

%% hanning
w = hanning(M+1);
h = fir1(M, om_c, w);

[delta_sreal, delta_preal] = calc_deltele(h, om_p, om_s);

%verificam daca am obtinut un filtrul valid PPFTI
if delta_preal < delta_p && delta_sreal < delta_s
    valid = 1;
else
    valid = 0;
end

%% kaiser
beta = 9;
w = kaiser(M+1, beta);
h = fir1(M, om_c, w);

[delta_sreal, delta_preal] = calc_deltele(h, om_p, om_s);

%verificam daca am obtinut un filtrul valid PPFTI
if delta_preal < delta_p && delta_sreal < delta_s
    valid = 1;
else
    valid = 0;
end

%% lanczos
L = 1;
w_7 = @(n,L,M)((sin(2*pi*(2*n - M + 1)/(2*(M-1))))/(2*pi*(2*n - M + 1)/(2*(M-1))))^L;
w = 0;

for n = 1 : M
    w =[w ; w_7(n,L,M)];
end

h = fir1(M, om_c, w);


[delta_sreal, delta_preal] = calc_deltele(h, om_p, om_s);

%verificam daca am obtinut un filtrul valid PPFTI
if delta_preal < delta_p && delta_sreal < delta_s
    valid = 1;
else
    valid = 0;
end

%% tukey
alfa = 33/100;
w = tukeywin(M+1, alfa);

[delta_sreal, delta_preal] = calc_deltele(h, om_p, om_s);

%verificam daca am obtinut un filtrul valid PPFTI
if delta_preal < delta_p && delta_sreal < delta_s
    valid = 1;
else
    valid = 0;
end
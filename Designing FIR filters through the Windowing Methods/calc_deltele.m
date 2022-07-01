function [delta_sreal, delta_preal] = calc_deltele(h, om_p, om_s)
%pt banda de trecere
grila_frecv = 0:om_p/1000:om_p;
H = freqz(h, 1, grila_frecv);
delta_preal = max(abs(1 - abs(H)));

%pt banda de stopare
grila_frecv = om_s*pi:om_s*pi/1000:pi;
H = freqz(h, 1, grila_frecv);
delta_sreal = max(abs(H));
end
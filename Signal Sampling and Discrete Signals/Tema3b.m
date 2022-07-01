M = 100;
w = 3*pi/15;
Ts = 1;
k = 3;

rep_grafic(w, Ts, M);

N3 = 2 * pi * k / w; %perioada avand k = 3;

%prin reprezentarea grafica se vede ca perioada fundamentala este N_0 = 10...
%... si asta deduce ca k reprezinta nr. de perioade...
%... si N3 este doar o perioada luata din relatia...
%... N3 = k * N_0

N_0 = 10; %perioada fundamentala

k2 = 2; %reprezinta k = 2
N2 = k2 * N_0; %perioada avand k = 2

%devine ca k reprezinta numarul de perioade

%... am verificat si prin calcul matematic pe Tema3b_perioada.pdf

%pentru frecvente ca sa obtinem alte valori ale lui k am verificat pe
%Tema3b_frecventa.pdf

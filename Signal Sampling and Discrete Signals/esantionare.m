function x = esantionare(w, Ts, M);

m = 0:M-1 %se alege suportul m

x_a = sin(w * m); %reprezentarea sinusoidei continuu

x = x_a * Ts; %reprezentarea sinusoideii discrete

end
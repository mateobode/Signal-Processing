[y1, Fs1] = audioread('sunet_a.au'); 
info1 = audioinfo('sunet_a.au'); %iau informatia pentru semnalul sunet_a.au
d1 = info1.Duration; %salvez durata a semnalului sunet_a.au intro variabila d1 

[y2, Fs2] = audioread('sunet_i.au');
info2 = audioinfo('sunet_i.au'); %iau informatia pentru semnalul sunet_i.au
d2 = info2.Duration; %salvez durata a semnalului sunet_i.au intro variabila d2

[y3, Fs3] = audioread('sunet_s.au');
info3 = audioinfo('sunet_s.au'); %iau informatia pentru semnalul sunet_s.au
d3 = info3.Duration; %salvez durata a semnalului sunet_s.au intro variabila d3

[y4, Fs4] = audioread('xilo.au');
info4 = audioinfo('xilo.au'); %iau informatia pentru semnalul xilo.au
d4 = info4.Duration; %salvez durata a semnalului xilo.au intro variabila d4

[y5, Fs5] = audioread('xilo.wav');
info5 = audioinfo('xilo.wav'); %iau informatia pentru semnalul xilo.wav
d5 = info5.Duration; %salvez durata a semnalului xilo.wav intro variabila d5
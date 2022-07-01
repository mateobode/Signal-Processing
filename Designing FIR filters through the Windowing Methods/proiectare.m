function [h, delta_sreal, delta_preal, valid] = proiectare(M, om_c, fereastra)
    
    om_p = 0.3;
    om_s = 0.5;
    delta_p = 0.05;
    delta_s = 0.05;
    
    switch fereastra
        case 0,		%dreptunghiulara
           w = boxcar(M+1);
        case 1,		%trianghiulara
           w = triang(M+1);
        case 2,		%blackman
           w = blackman(M+1);
        case 3,		%chebwin
           r = 90;
           w = chebwin(M+1, r);
        case 4,     %hamming
           w = hamming(M+1);
        case 5,     %hanning
           w = hanning(M+1); 
        case 6,     %kaiser
           beta = 9;
           w = kaiser(M+1, beta);
        case 7,     %lanczos
           L = 1;
           w_7 = @(n,L,M)((sin(2*pi*(2*n - M + 1)/(2*(M-1))))/(2*pi*(2*n - M + 1)/(2*(M-1))))^L;
           w = 0;

           for n = 1 : M
               w =[w ; w_7(n,L,M)];
           end
           
        case 8,%tukey
           alfa = 33/100;
           w = tukeywin(M+1, alfa);
    end
    
    h = fir1(M, om_c, w);
    
    [delta_sreal, delta_preal] = calc_deltele(h, om_p, om_s);
    
    if delta_preal < delta_p && delta_sreal < delta_s
        valid = 1;
    else
        valid = 0;
    end
    
end
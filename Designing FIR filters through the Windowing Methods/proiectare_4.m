function [h, delta_sreal, delta_preal, M,valid] = proiectare_4(M, om_p, om_s, delta_p, delta_s, fereastra)
    
    om_c = (om_s+om_p)/2;
    
    M_max = 500;
    
    if(M == 'ord_min')
       
        M = 2;
        
        cond = 0;
        while(cond == 0)
            
    
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
               if 2*pi*(2*n - M + 1)/(2*(M-1)) == 0
                   w = [w;1];
               else
               w =[w ; w_7(n,L,M)];
               end
           end

            case 8,%tukey
               alfa = 33/100;
               w = tukeywin(M+1, alfa);
        end

        h = fir1(M, om_c, w);

        [delta_sreal, delta_preal] = calc_deltele(h, om_p, om_s);

        if delta_preal < delta_p && delta_sreal < delta_s
            cond = 1;
            valid = 1;
        else
            M = M +1;
            valid = 0;
        end
        
        if(M == M_max)
            fprintf('Nr_max_iter');
            return;
            
        end
    end
    else
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
               if 2*pi*(2*n - M + 1)/(2*(M-1)) == 0
                   w = [w;1];
               else
               w =[w ; w_7(n,L,M)];
               end
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
    
end
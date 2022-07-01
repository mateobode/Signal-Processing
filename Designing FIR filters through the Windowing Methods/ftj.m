function [h, i, delta_preal, delta_sreal] = ftj( M, om_p, om_s, delta_p, delta_s, fereastra)
    
    om_c = 1/2*(om_p+om_s);
    
    i = 5;
    
    while (i < M) 
        W = window(fereastra, i);
        [h , a] = fir1( i-1, om_c/pi, W); 
        [delta_preal, delta_sreal] = calc_deltele(h, om_p, om_s);
        
        if ( delta_preal < delta_p && delta_sreal < delta_s )
            % Am gasit filtrul => stop
            return;
        end
            i = i+1;
    end
end
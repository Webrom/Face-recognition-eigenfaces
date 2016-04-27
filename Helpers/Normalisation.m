function [ T_normal ] = Normalisation( T,M,S )
    T_normal = T-M;
    T_normal = T_normal./S;
end


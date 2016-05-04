function [ T_normal ] = Normalisation( T,M,S )
    %Permet de faire la normalisation de T à l'aide du mean et du std
    T_normal = T-M;
    T_normal = T_normal./S;
end


function [ M,S ] = repeatMAndS( T,M,S )

    %Permet de répater mean et std le nombre de ligne que nous avons dans T
    M = repmat(M,size(T,1),1);
    S = repmat(S,size(T,1),1);
end


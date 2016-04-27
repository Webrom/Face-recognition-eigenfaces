function [ M,S ] = repeatMAndS( T,M,S )
    M = repmat(M,size(T,1),1);
    S = repmat(S,size(T,1),1);
end


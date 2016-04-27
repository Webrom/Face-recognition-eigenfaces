function [ E ] = AnalyseComposantePrincipale( T )
    T = cov(T);
    [U,S,E] = svd(T);
    E = E(:,[1:1:48]);
end


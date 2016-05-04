function [ mean_result,std_result ] = meanAndstd( T )
    %Permet d'obtenir le mean et le std de la matrice T
    mean_result = mean(T);
    std_result = std(T,1);
end


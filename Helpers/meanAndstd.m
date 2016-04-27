function [ mean_result,std_result ] = meanAndstd( T )
    mean_result = mean(T);
    std_result = std(T,1);
end


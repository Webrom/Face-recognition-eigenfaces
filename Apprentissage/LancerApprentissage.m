function LancerApprentissage()
T = GenerateT('/Users/Romain/CloudStation/ENSSAT/2A/AnalyseImage_2emePartie/Face-recognition-eigenfaces/att_faces/s',40,5);
[mean_result,std_result] = meanAndstd(T);
%disp(size(mean_result));
%disp(size(std_result));
dlmwrite('./Data/mean_result.txt',mean_result);
dlmwrite('./Data/std_result.txt',std_result);
[mean_result,std_result] = repeatMAndS(T,mean_result,std_result);
%disp(size(mean_result));
%disp(size(std_result));
T_normal = Normalisation(T,mean_result,std_result);
%disp(size(T_normal));
eigenfaces = AnalyseComposantePrincipale(T_normal);
dlmwrite('./Data/eigenfaces.txt',eigenfaces);
%disp(size(eigenfaces));
matriceDescripteurs = getMatriceDescripteurs(T_normal,eigenfaces);
dlmwrite('./Data/matriceDescripteurs.txt',matriceDescripteurs);
%disp(size(matriceDescripteurs));
end


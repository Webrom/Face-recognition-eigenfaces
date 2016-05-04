function LancerApprentissage(nbPhotosParClasse)
[T,classesFolder,imgAnalyse] = GenerateT('/Users/Romain/CloudStation/ENSSAT/2A/AnalyseImage_2emePartie/Face-recognition-eigenfaces/att_faces/s',40,nbPhotosParClasse,10);
dlmwrite('./Data/classesFolder.txt',classesFolder);
dlmwrite('./Data/imgAnalyse.txt',imgAnalyse);
[mean_result,std_result] = meanAndstd(T);
dlmwrite('./Data/mean_result.txt',mean_result);
dlmwrite('./Data/std_result.txt',std_result);
[mean_result,std_result] = repeatMAndS(T,mean_result,std_result);
T_normal = Normalisation(T,mean_result,std_result);
eigenfaces = AnalyseComposantePrincipale(T_normal);
dlmwrite('./Data/eigenfaces.txt',eigenfaces);
matriceDescripteurs = Projection(T_normal,eigenfaces);
dlmwrite('./Data/matriceDescripteurs.txt',matriceDescripteurs);
end
function LancerApprentissage(nbPhotosParClasse)
%Permet d'obtenir R, classesFOlder et imgAnalyse

%T = voir le schéma dans le rapport, base avec nos images misent sur une
%seule ligne

%classeFolder = Permet de savoir a quel dossier et rattaché l'image à la
%ligne i de la matrice T. Par exemple, je prends la ligne 3 de la matrice
%T, pour savoir à quel dossier elle fait référence il suffit de regarder
%dans classeFolder(3).

%imgAnalyse = permet de savoir les images qui ont été choisis de manière
%aléatoire. Par exemple j'ai choisi de mettre en base 3 photos/personne et
%je souhaite connaitre pour la personne 4, je regarde imgAnalyse(3) et
%j'obtient les images analysées dans la base.

[T,classesFolder,imgAnalyse] = GenerateT('/Users/Romain/CloudStation/ENSSAT/2A/AnalyseImage_2emePartie/Face-recognition-eigenfaces/att_faces/s',40,nbPhotosParClasse,10);

%Enregistrements dans le disque de ces valeurs (utilisée pour les tests)
%******************************************************
dlmwrite('./Data/classesFolder.txt',classesFolder);
dlmwrite('./Data/imgAnalyse.txt',imgAnalyse);
%******************************************************

%Calcul de mean et std pour la matrice T
[mean_result,std_result] = meanAndstd(T);

%Enregistrements dans le disque de ces valeurs (utilisée pour les tests)
%******************************************************
dlmwrite('./Data/mean_result.txt',mean_result);
dlmwrite('./Data/std_result.txt',std_result);
%******************************************************

%Permet de dupliquer mean et std (afin les soustraires/multiplier/diviser
%avec T.
[mean_result,std_result] = repeatMAndS(T,mean_result,std_result);

%Normalisation de la matrice à l'aide de mean et std calculé précédement
T_normal = Normalisation(T,mean_result,std_result);

%Calcul des eigenfaces (voir AnalyseComposantePrincipale.m pour afficher
%les eigenfaces ou le pourcentage de lambda)
eigenfaces = AnalyseComposantePrincipale(T_normal);

%Enregistrements dans le disque de ces valeurs (utilisée pour les tests)
%******************************************************
dlmwrite('./Data/eigenfaces.txt',eigenfaces);
%******************************************************

%Permet d'obtenir la matrice de descripteurs
matriceDescripteurs = Projection(T_normal,eigenfaces);

%Enregistrements dans le disque de ces valeurs (utilisée pour les tests)
%******************************************************
dlmwrite('./Data/matriceDescripteurs.txt',matriceDescripteurs);
%******************************************************
end
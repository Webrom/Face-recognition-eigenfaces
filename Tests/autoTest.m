function [ accuracy ] = autoTest(nbFolder,nbPhotosInFolder)
path = './att_faces/s';
%Récupération des images qui ont été analysées pour la base d'apprentissage
imgAnalyse = dlmread('./Data/imgAnalyse.txt');
%Matrcie (initialisé avec des 0) servant à connaitre la précision.
Mresult = zeros(nbFolder,nbFolder);
    for i=1:nbFolder
       for j=1:nbPhotosInFolder
           %Si l'image n'est pas dans la base d'apprentissage alors on fait
           %le test
           if isempty(find(imgAnalyse(i)==j))==1
               %La suite du test suit le même principe que LancerTest1.m
               v1 = num2str(i);
               v2 = num2str(j);
               imagePath = strcat(path,v1,'/',v2,'.pgm');
               img = ImageToVector(resizeImage(chargerImage(imagePath,0)));
               mean_result = dlmread('./Data/mean_result.txt');
               std_result = dlmread('./Data/std_result.txt');
               img_normal = Normalisation(img,mean_result,std_result);
               E = dlmread('./Data/eigenfaces.txt');
               projection = Projection(img_normal,E);
               [indexImage] = decision(projection,dlmread('./Data/matriceDescripteurs.txt'));
               classesFolder = dlmread('./Data/classesFolder.txt');
               folderResultNumber = classesFolder(indexImage);
               %Ajout du résultat à la matrice, si le résultat est bon
               %alors la diagonnale sera incrémentée. Sinon c'est une autre
               %partie de la matrice qui est incrémentée.
               Mresult(i,folderResultNumber) = Mresult(i,folderResultNumber)+1;
           end
       end
    end
    %Calcul de la précision.
accuracy = trace(Mresult)/sum(Mresult(:));
end


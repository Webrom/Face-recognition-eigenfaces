function [ accuracy ] = autoTest(nbFolder,nbPhotosInFolder)
path = '/Users/Romain/CloudStation/ENSSAT/2A/AnalyseImage_2emePartie/Face-recognition-eigenfaces/att_faces/s';
imgAnalyse = dlmread('./Data/imgAnalyse.txt');
Mresult = zeros(nbFolder,nbFolder);
    for i=1:nbFolder
       for j=1:nbPhotosInFolder
           if isempty(find(imgAnalyse(i)==j))==1
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
               Mresult(i,folderResultNumber) = Mresult(i,folderResultNumber)+1;
           end
       end
    end
accuracy = trace(Mresult)/sum(Mresult(:));
end


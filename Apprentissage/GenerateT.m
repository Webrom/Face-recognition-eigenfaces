function [ T,classesFolder,imgAnalyse ] = GenerateT(path,nbFolder,nbPhotos,nbPhotosInFolder)
y = 1;
classesFolder = [];
imgAnalyse = zeros(nbFolder,nbPhotos);
    for i=1:nbFolder
        indexRandomPhotos = randperm(nbPhotosInFolder,nbPhotos);
       for j=1:nbPhotos
           v1 = num2str(i);
           v2 = num2str(indexRandomPhotos(j));
           imagePath = strcat(path,v1,'/',v2,'.pgm');
           img = ImageToVector(resizeImage(chargerImage(imagePath,0)));
           T(y,:) = img(1,:);
           classesFolder(y) = i;
           imgAnalyse(i,j) = indexRandomPhotos(j);
           y = y+1;
       end
    end
end


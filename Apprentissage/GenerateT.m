function [ T ] = GenerateT(path,nbFolder,nbPhotos)
y = 1;
    for i=1:nbFolder
       for j=1:nbPhotos
           v1 = num2str(i);
           v2 = num2str(j);
           imagePath = strcat(path,v1,'/',v2,'.pgm');
           img = ImageToVector(resizeImage(chargerImage(imagePath,0)));
           T(y,:) = img(1,:);
           y = y+1;
       end
    end
end


function LancerTest1()
    folderNumber = 23;
    imgNumber = 6;
    path = '/Users/Romain/CloudStation/ENSSAT/2A/AnalyseImage_2emePartie/Face-recognition-eigenfaces/att_faces/s';
    v1 = num2str(folderNumber);
    v2 = num2str(imgNumber);
    imagePath = strcat(path,v1,'/',v2,'.pgm');
    img = ImageToVector(resizeImage(chargerImage(imagePath,0)));
    mean_result = dlmread('./Data/mean_result.txt');
    std_result = dlmread('./Data/std_result.txt');
    img_normal = Normalisation(img,mean_result,std_result);
    E = dlmread('./Data/eigenfaces.txt');
    projection = Projection(img_normal,E);
    disp(size(projection));
    [indexImage] = decision(projection,dlmread('./Data/matriceDescripteurs.txt'));
    disp('Index Image');
    disp(indexImage);
    classesFolder = dlmread('./Data/classesFolder.txt');
    folderResultNumber = classesFolder(indexImage);
    v3 = num2str(folderResultNumber);
    imageResultPath = strcat(path,v3,'/1.pgm');
    imgBase = chargerImage(imagePath,0);
    imgResult = chargerImage(imageResultPath,0);
    res = [imgBase,imgResult];
    AfficherImage(res);
end


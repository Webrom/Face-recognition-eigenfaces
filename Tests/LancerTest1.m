function LancerTest1()
    img = ImageToVector(resizeImage(chargerImage('/Users/Romain/CloudStation/ENSSAT/2A/AnalyseImage_2emePartie/Face-recognition-eigenfaces/att_faces/s1/1.pgm',0)));
    mean_result = dlmread('./Data/mean_result.txt');
    std_result = dlmread('./Data/std_result.txt');
    img_normal = Normalisation(img,mean_result,std_result);
    E = dlmread('./Data/eigenfaces.txt');
    projection = Projection(img_normal,E);
    disp(size(projection));
end


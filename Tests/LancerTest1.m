function LancerTest1()
    %Choisir la personne que l'on veut tester
    folderNumber = 21;
    %Choisir la photo de la personne
    imgNumber = 6;
    path = './att_faces/s';
    %Simplement pour transformer des chiffres en string (pour le
    %path)
    %*************************************
    v1 = num2str(folderNumber);
    v2 = num2str(imgNumber);
    imagePath = strcat(path,v1,'/',v2,'.pgm');
    %*************************************
    %Chargement, rendimenssionnement puis mise sous forme de vecteur de
    %l'image
    img = ImageToVector(resizeImage(chargerImage(imagePath,0)));
    %R�cup�ration du calcul des mean et std enregistr�s lors de
    %l'apprentissage
    mean_result = dlmread('./Data/mean_result.txt');
    std_result = dlmread('./Data/std_result.txt');
    %Normalisation de l'image
    img_normal = Normalisation(img,mean_result,std_result);
    %R�cup�ration des eigenfaces
    E = dlmread('./Data/eigenfaces.txt');
    %Projection
    projection = Projection(img_normal,E);
    %D�cision pour savoir quel est le plus proche voisin
    [indexImage] = decision(projection,dlmread('./Data/matriceDescripteurs.txt'));
    %R�cup�ration des index des images (pour savoir � quelle personne
    %appartient l'index i
    classesFolder = dlmread('./Data/classesFolder.txt');
    folderResultNumber = classesFolder(indexImage);
    v3 = num2str(folderResultNumber);
    imageResultPath = strcat(path,v3,'/1.pgm');
    imgBase = chargerImage(imagePath,0);
    imgResult = chargerImage(imageResultPath,0);
    %Concat�nation des l'image test�e avec celle obtenu en r�sultat
    res = [imgBase,imgResult];
    %Affichage des 2 images
    AfficherImage(res);
    %Affichage d'un message en fonction du r�sultat
    if folderResultNumber == folderNumber
        disp('MEME PERSONNE DECTECTEE ! BRAVO !');
    else
        disp('ERREUR, PAS LA MEME PERSONNE');
    end
end


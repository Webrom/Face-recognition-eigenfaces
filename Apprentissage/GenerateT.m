function [ T,classesFolder,imgAnalyse ] = GenerateT(path,nbFolder,nbPhotos,nbPhotosInFolder)

%y permet de compter les lignes dans notre future matrice T
y = 1;

%Initialisation des matrice
classesFolder = [];
imgAnalyse = zeros(nbFolder,nbPhotos);

%i correspond au dossier dans lequel nous cherchons les images
    for i=1:nbFolder
        
        %Permet de choisir de mani�re al�atoire les photos que nous allons
        %choisir dans le dossier
        indexRandomPhotos = randperm(nbPhotosInFolder,nbPhotos);
       
       %j permet de r�p�ter l'op�ration pour le nombre de photo par
       %personne que l'on souhaite ajouter en base
       for j=1:nbPhotos
           %Simplement pour transformer des chiffres en string (pour le
           %path)
           %*************************************
           v1 = num2str(i);
           v2 = num2str(indexRandomPhotos(j));
           imagePath = strcat(path,v1,'/',v2,'.pgm');
           %*************************************
           %Chargement de l'image recadr� et en vecteur
           img = ImageToVector(resizeImage(chargerImage(imagePath,0)));
           %Ajout de l'image � la suite de T
           T(y,:) = img(1,:);
           %Permet d'inscrire le num�ro de dossier (donc de personne) �
           %laquelle fait r�f�rence l'index y de T.
           classesFolder(y) = i;
           %Permet d'inscrire la photo que nous venons d'ajouter (dans une
           %sorte de registre, utilis� pour le test)
           imgAnalyse(i,j) = indexRandomPhotos(j);
           %Incr�mentation de y
           y = y+1;
       end
    end
end


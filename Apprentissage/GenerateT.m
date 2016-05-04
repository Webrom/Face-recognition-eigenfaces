function [ T,classesFolder,imgAnalyse ] = GenerateT(path,nbFolder,nbPhotos,nbPhotosInFolder)

%y permet de compter les lignes dans notre future matrice T
y = 1;

%Initialisation des matrice
classesFolder = [];
imgAnalyse = zeros(nbFolder,nbPhotos);

%i correspond au dossier dans lequel nous cherchons les images
    for i=1:nbFolder
        
        %Permet de choisir de manière aléatoire les photos que nous allons
        %choisir dans le dossier
        indexRandomPhotos = randperm(nbPhotosInFolder,nbPhotos);
       
       %j permet de répéter l'opération pour le nombre de photo par
       %personne que l'on souhaite ajouter en base
       for j=1:nbPhotos
           %Simplement pour transformer des chiffres en string (pour le
           %path)
           %*************************************
           v1 = num2str(i);
           v2 = num2str(indexRandomPhotos(j));
           imagePath = strcat(path,v1,'/',v2,'.pgm');
           %*************************************
           %Chargement de l'image recadré et en vecteur
           img = ImageToVector(resizeImage(chargerImage(imagePath,0)));
           %Ajout de l'image à la suite de T
           T(y,:) = img(1,:);
           %Permet d'inscrire le numéro de dossier (donc de personne) à
           %laquelle fait référence l'index y de T.
           classesFolder(y) = i;
           %Permet d'inscrire la photo que nous venons d'ajouter (dans une
           %sorte de registre, utilisé pour le test)
           imgAnalyse(i,j) = indexRandomPhotos(j);
           %Incrémentation de y
           y = y+1;
       end
    end
end


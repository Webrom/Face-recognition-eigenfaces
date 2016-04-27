%Fonction pour charger une image
function matriceImage = chargerImage(path,isRGB)
    if isRGB == 0 
        matriceImage = double(imread(path));
    else
        matriceImage = double(rgb2gray(imread(path)));
    end 
end
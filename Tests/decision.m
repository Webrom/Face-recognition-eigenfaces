function [ indexImage] = decision( img,descripteurs )
    %Permet de comparer l'image avec les descripteur, renvoie le numéro de
    %la personne donc la photo semble la plus proche
    d = repmat(img,size(descripteurs,1),1);
    delta = d-descripteurs;
    norme = diag(delta*delta');
    [res,indexImage] = min(norme);

end


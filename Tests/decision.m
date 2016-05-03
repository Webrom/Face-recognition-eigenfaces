function [ indexImage] = decision( img,descripteurs )
    d = repmat(img,size(descripteurs,1),1);
    delta = d-descripteurs;
    norme = diag(delta*delta');
    [res,indexImage] = min(norme);

end


function [ vecteur ] = ImageToVector( image )
%Transforme la matrice 2D d'une image en un seul vecteur (d'une seule
%ligne)
vecteur = image(:)';
end


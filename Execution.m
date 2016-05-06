% Pour ajouter les fonctions rang�es dans les diff�rents dossier
addpath('./Helpers');
addpath('./Apprentissage');
addpath('./Tests');

%Apprentissage
%Enlever le commentaire pour lancer l'apprentissage, tous les param�tres
%se r�glent dans ./Apprentissage/LancerApprentissage.m sauf ci-dessous
%Param�tre de la fonction : le nombre de photos al�atoires que l'on
%souhaite prendre par dossier. (Maximum 9, car il n'y a que 10 photos dans
%chaque dossier)
%Environ 20 secondes d'�x�cution
%*****************************
%LancerApprentissage(1);
%*****************************

%NOTE : Pour afficher les Eigenfaces ou le lambda, enlever les commentaires
%dans le fichiers ./Apprentissage/AnalyseComposantePrincipale.m

%Permet de tester une image. Modifier l'image de test dans
%./Test/LancerTest1.m
%La base d'apprentissage doit �tre �x�cuter avant.
%Enlever le commentaire pour �x�cuter (environ 5 secondes).
%*****************************
%LancerTest1();
%*****************************

%Permet de tester et d'obtenir le pourcentage de r�ussite pour 1, 2, 3,
%...9 images dans la base (s�lectionn�es de mani�re al�atoire).
%Enlever le commentaire pour �x�cuter (environ 7 minutes d'�x�cution avec
%un processeur Intel I7 4 coeurs)
%*****************************
%getAccuracy()
%*****************************
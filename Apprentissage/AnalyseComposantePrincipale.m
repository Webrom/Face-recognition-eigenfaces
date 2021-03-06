function [ E ] = AnalyseComposantePrincipale( T )

    %Calcul de la covariance
    T = cov(T);
    
    %Obtention des eigenfaces et de lambda
    [U,S,E] = svd(T);
    E = E(:,[1:1:48]);
    
   
    %Affichage de l'eigenfaces
    %Enlever commentaire pour les afficher
    %******************************
%     EtoPrint = E*1500+128;
%     imgs = [];
%     for i=1:size(E,2)
%         img = reshape(EtoPrint(:,i),[56,46]);
%         imgs = [imgs,img];
%     end
%     AfficherImage(imgs);
    %******************************

    %Enlever les commentaires pour afficher le pourcentage de lambda
    %******************************
%     diagS = diag(S);
%     sumS = sum(diagS);
%     res = diagS/sumS;
%     pourcentageS = cumsum(res);
%     plot(pourcentageS);
%     disp(sumS);
    %******************************

end


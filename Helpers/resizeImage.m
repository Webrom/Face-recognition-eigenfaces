function [ resizeImage ] = resizeImage( image )
    %Recadre l'image avec un facteur d'un demi.
    resizeImage = imresize(image,0.5);
end


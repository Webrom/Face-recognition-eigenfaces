# Face-recognition-eigenfaces
Face recognition with eigenfaces method using Matlab.

## Utilisation
**Dans le fichier Execution.m, lancer l'apprentissage [LancerApprentissage(1)] :**  
Enlever le commentaire pour lancer l'apprentissage, tous les paramètres se règlent dans ./Apprentissage/LancerApprentissage.m sauf le nombre de photos aléatoires que l'on souhaite prendre par dossier. (Maximum 9, car il n'y a que 10 photos dans chaque dossier). Ce dernier se règle directement dans l'appel de la fonction.  
Environ 20 secondes d'éxécution avec un Intel I7.

> NOTE : Pour afficher les Eigenfaces ou le lambda, enlever les commentaires dans le fichiers ./Apprentissage/AnalyseComposantePrincipale.m  

**Dans le fichier Execution.m, lancer le test simple [LancerTest1()] :**  
Permet de tester une image. Modifier l'image de test dans ./Test/LancerTest1.m  
La base d'apprentissage doit être éxécuter avant.  
Enlever le commentaire pour éxécuter (environ 5 secondes).  

**Dans le fichier Execution.m, lancer le test automatique [getAccuracy()] :**  
Permet de tester et d'obtenir le pourcentage de réussite pour 1, 2, 3, ...,9 images dans la base (sélectionnées de manière aléatoire).  
Enlever le commentaire pour éxécuter (environ 7 minutes d'éxécution avec un processeur Intel I7 4 coeurs)

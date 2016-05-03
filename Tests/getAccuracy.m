function getAccuracy()
Accuracy = [];
    for i=1:9
        disp('Demarrage pour i = ');
        disp(i);
        LancerApprentissage(i);
        Accuracy(i) = autoTest(40,10);
    end
plot(Accuracy);
end


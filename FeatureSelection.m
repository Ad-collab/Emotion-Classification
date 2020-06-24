load('TFeatures_Label.mat');

Feature = TFeatures_Label;
n=2;
q=0;
for i=1:675
    
    n-q
    Feature(n-q,:) = [];
    n=n+62;
    q=q+1;

end
resFSelection = Feature;
save('res_FSelection','resFSelection');
clc;
clear all;
close all;
load('DEAP_goo_rangeE');
load('DEAP_goo_FeaturesLabels.mat');
r = rangeE(:,2);
fmE = mean(r);
n=1;
q=0;
goo_Sel_Feature = [];
for i=1:40960
    %e = entropy(double(incres_FeatureLabel(i,1:1000)));
    if (r(n)>= fmE)
        q=q+1;
        display(n);display(i);
       goo_Sel_Feature = [goo_Sel_Feature;goo_FeaturesLabels(i,:)];    
    end
    if (n>=32)
       n=0; 
    end
    n=n+1;
end
save('DEAP_goo_Sel_Feature','goo_Sel_Feature');
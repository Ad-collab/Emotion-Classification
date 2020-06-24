clc;
clear all;
close all;
load('DEAP_goo_FeaturesLabels.mat');
% load('arr_TFeatures.mat');
% res50_FeatureLabel = [arr_TFeatures res101_FeatureLabel(:,1001)];
% save('res50_FeatureLabel.mat','res50_FeatureLabel');
Entropy =[];
for i=1:40960
    i
   e = entropy(double(diff(goo_FeaturesLabels(i,1:1000))));
    
   Entropy = [Entropy;e];
    
end
Entropy = reshape(Entropy,[32,1280]);

ME = mean(Entropy')';
maxE = max(Entropy')';
minE = min(Entropy')';
rangeE = [minE ME maxE];
save('DEAP_goo_rangeE','rangeE');
clc;   


%laod('labels_ind.mat');

goo_Features = [];
 goo_Label = [];
 
 % Read Data
Dataset = 'path';
f1=ls(Dataset); 
f1(1,:) = [];
f1(1,:) = [];
display(f1);

for i=1:size(f1,1)
    i
    f2=strcat(Dataset,'\',f1(i,:));
    f3=ls(f2);
    f3(1,:)=[];
    f3(1,:)=[];
    
    for j=1:size(f3,1)
        j
        l=labels_ind(j);
        f4=strcat(f2,'\',f3(j,:));
        f5=ls(f4);
        f5(1,:)=[];
        f5(1,:)=[];
        
        for k=1:size(f5,1)
            f6=strcat(f4,'\',f5(k,:));
            I=imread(f6);
           I = imresize(I,[224 224]);
           NN = googlenet;
           NN.Layers;
           layer = 'loss3-classifier';
           Feature= activations(NN,I,layer,'outputAs','rows');
           %
           goo_Features=[goo_Features;Feature];
              goo_Label=[goo_Label;l];
        end
    end
end
goo_FeaturesLabels = [goo_Features goo_Label];
save('DEAP_goo_FeaturesLabels','goo_FeaturesLabels');
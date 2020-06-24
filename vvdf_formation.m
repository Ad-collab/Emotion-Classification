clc;
clear all;
close all;
load('DEAP_goo_Sel_Feature');
 sub10_FL_1 = [];
 sub10_FL_2 = [];
 sub10_FL_3 = [];
 sub10_FL_4 = [];
 arr_FL = [];
 goo_Sel_sub10_Feature = goo_Sel_Feature;
for i=1:21760
    i
    if(goo_Sel_Feature(i,1001)==1)
        sub10_FL_1 = [sub10_FL_1;goo_Sel_sub10_Feature(i,1:1001)];
    elseif(goo_Sel_Feature(i,1001)==2)
        sub10_FL_2 = [sub10_FL_2;goo_Sel_sub10_Feature(i,1:1001)];
    elseif(goo_Sel_Feature(i,1001)==3)
        sub10_FL_3 = [sub10_FL_3;goo_Sel_sub10_Feature(i,1:1001)];
    elseif(goo_Sel_Feature(i,1001)==4)
        sub10_FL_4 = [sub10_FL_4;goo_Sel_sub10_Feature(i,1:1001)];
        
    end
end
arr_FL = [sub10_FL_1; sub10_FL_2; sub10_FL_3; sub10_FL_4];
save('goo_arr2_FL','arr_FL');
n=8;
[idx1,Cn1] = kmeans(sub10_FL_1,n);
[idx2,Cn2] = kmeans(sub10_FL_2,n);
[idx3,Cn3] = kmeans(sub10_FL_3,n);
[idx4,Cn4] = kmeans(sub10_FL_4,n);

f10subFeature_vvdf = [Cn1;Cn2;Cn3;Cn4];
q = sprintf('%d',n)
fnam = 'f10subFeature_vvdf';
fname = [fnam,q]
save(fname,fnam);

% r = rangeE(:,2);
% fmE = mean(r);
% q=0;
% for i=1:32
%     if (r(i)>= fmE)
%         q=q+1;
%         
%     end
% end
% s=q;
% b=s*5*5;
% a = s*5*15;
% 
% load('alx_Sel_f5subFeature.mat');
% %alx_Sel_f5subFeature = [];
% 
% FL_Nutral1 = alx_Sel_f5subFeature(1:b,:);
% FL_Positive1 = alx_Sel_f5subFeature(b+1:(2*b),:);
% FL_Negative1 = alx_Sel_f5subFeature((2*b)+1:(3*b),:);
% 
% FL_Nutral2 = alx_Sel_f5subFeature(a+1:a+b,:);
% FL_Positive2 = alx_Sel_f5subFeature(a+b+1:a+(2*b),:);
% FL_Negative2 = alx_Sel_f5subFeature(a+(2*b)+1:a+(3*b),:);
% 
% FL_Nutral3 = alx_Sel_f5subFeature((2*a)+1:(2*a)+b,:);
% FL_Positive3 = alx_Sel_f5subFeature((2*a)+b+1:(2*a)+(2*b),:);
% FL_Negative3 = alx_Sel_f5subFeature((2*a)+(2*b)+1:(2*a)+(3*b),:);
% 
% FL_Nutral = [FL_Nutral1;FL_Nutral2;FL_Nutral3];
% FL_Positive = [FL_Positive1;FL_Positive2;FL_Positive3];
% FL_Negative = [FL_Negative1;FL_Negative2;FL_Negative3];

% clc;
% clear all;
% load('arr_TFeatures.mat');
% f5subFeature = [];
% subFeature = arr_TFeatures(27900+9300+1:27900+9300+1550,:);
% f5subFeature = [f5subFeature;subFeature];
% save('f5subFeature','f5subFeature');
% 
% arr_FL = [sub10_FL_1(1:1088,:); sub10_FL_2(1:1224,:); sub10_FL_3(1:816,:); sub10_FL_4(1:2312,:); 
%           sub10_FL_1(1088:2176,:); sub10_FL_2(1224:2448,:); sub10_FL_3(816:1632,:); sub10_FL_4(2312:4624,:); 
%           sub10_FL_1(2176:3264,:); sub10_FL_2(2448:3672,:); sub10_FL_3(1632:2448,:); sub10_FL_4(4624:6936,:); 
%           sub10_FL_1(3264:4352,:); sub10_FL_2(3672:4896,:); sub10_FL_3(2448:3264,:); sub10_FL_4(6936:9248,:); ];
%       
clc;
clear all;
close all;
load('DEAP_goo_rangeE');
y = 'goo_Sel_f5subFFeaturevvdf10_Matrix';
load('goo_arr2_FL.mat');
load('f10subFeature_vvdf10');
nr = size(f10subFeature_vvdf10,1);
r = rangeE(:,2);
fmE = mean(r);
q=0;
for i=1:32
    if (r(i)>= fmE)
        q=q+1;
        
    end
end
s=q;
FFeature = zeros([1 nr]);
f10subFFeaturevvdf = [];
max_Feature = 32*40;
%d = arr_TFeatures(1:62,:);
n=0;q=0;
for i = 1:max_Feature
   d = arr_FL(n+1:n+s,1:1000);
    for j= 1:s
        dis = [];
        for k= 1:nr
            d1 = edr(f10subFeature_vvdf10(k,:),d(j,:),0.1);
            dis = [dis d1];
        end
        [m,ind] = min(dis);
        add = FFeature(ind);
        add = add+1;
        FFeature(ind) = add;
    end
    
     if arr_FL(n+1,1001)==1
         f10subFFeaturevvdf = [f10subFFeaturevvdf;FFeature 1];
     elseif arr_FL(n+1,1001)==2
         f10subFFeaturevvdf = [f10subFFeaturevvdf;FFeature 2];
     elseif arr_FL(n+1,1001)==3
         f10subFFeaturevvdf = [f10subFFeaturevvdf;FFeature 3];
     elseif arr_FL(n+1,1001)==4
         f10subFFeaturevvdf = [f10subFFeaturevvdf;FFeature 4];
         
     end
%      if n==a || n==(2*a)
%         q=0;
%      end
     q = q+17
    n = n+17;
end
save(y,'f10subFFeaturevvdf');
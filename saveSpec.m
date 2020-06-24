clc;
l=1;m=3;h=10;
  for k = 2915:4650
    awt(a(k,:),'bump'); colorbar('off');set(gca,'XTick',[], 'YTick', []);
    n1 = sprintf('%d',h); n2 = sprintf('_%d',m); n3 = sprintf('_%d',l); 
    fileName = [n1,n2,n3,'.png']
    saveas(gcf,fileName); %Use to display save as image
    I=imread(fileName);I=I(66:583,119:793,:);imwrite(I,fileName);
    l=l+1;
    if l>62
        m=m+1;
        if m>5
            h=h+1;
            m=1;
        end
       l=1;
    end
end
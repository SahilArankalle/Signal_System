clc;
clear all;
close all;
sw_tilesize=600;
sh_tilesize=600;
% u=101;
% str = strcat(int2str(u),'.gif'); 
pic=imread ('101.gif');
 i=300;
 source_texture_tilesize = imcrop(pic,[20 20 sw_tilesize-1 sw_tilesize-1]);%chn
X = double(source_texture_tilesize);%chn . To generate candidate patches
figure;imshow(source_texture_tilesize);
 title('Brodatz Texture Image')
%dist_corr = zeros( i, 1 );
for i=1:i
 AA=X(1:i, 1:i);
BB=X(1:i, i:i+i-1);% Horizontally adjuscent patch
 %BB=X(i:i+i-1, 1:i);%BB=X(5:9,1:5) Vertcally adjuscent patch
 
 dist=corr2(AA,BB);
 dist_corr(i)=dist;
end
 [pks,locs] = findpeaks(dist_corr); 
figure;
 plot(dist_corr,'Color','blue'); hold on;grid on
 plot(locs,dist_corr(locs),'k^','markerfacecolor',[1 0 0]);
 title('Peaks for Brodatz Texture Image')
 %figure('name',sprintf('file name is 
%d',baseFileName),'NumberTitle','off');
 xlabel('Window size')
 ylabel('Correlation')
tilesize1=locs(4)-locs(3)
tilesize2=locs(5)-locs(4)
pattern_size=round((tilesize1+tilesize2)/2) 
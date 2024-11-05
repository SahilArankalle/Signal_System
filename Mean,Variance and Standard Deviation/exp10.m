clc;
%SS=[ 4,7,9;4,6,2;11, 34, 43];
SS=imread ('101.gif');
imshow(SS)
%SS=imcrop(SS,[1 1 20 20])
SS=double(SS);
%SS=[ 30 20 30; 30 0 30;30 0 30]
M=mean(SS(:))
V=var(SS(:))
SD=std(SS(:))
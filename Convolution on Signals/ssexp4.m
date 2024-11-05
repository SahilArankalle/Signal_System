clear all; 
close all; 
clc; 
t = 0:0.01:10; 
x1 = 2*(t>=1 & t<=3)+0*(t<1 & t>3); 
x2 = 2*(t>=0 & t<=2)+0*(t<0 & t>2); 
y = conv(x1,x2); 
 
subplot(3,1,1); 
plot(t,x1); 
xlabel('t'); 
ylabel("x1(t)"); 
title("Signal 1"); 
 
 
subplot(3,1,2); 
plot(t,x2); 
xlabel('t'); 
ylabel("x2(t)"); 
title("Signal 2"); 
 
 
subplot(3,1,3); 
n3 = length(y); 
t1 = 0:1:n3-1; 
plot(t1/100,y/100,'r'); 
xlabel('t'); 
ylabel("y(t)"); 
title("Convolutional Output"); 
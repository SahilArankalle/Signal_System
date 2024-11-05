% ****Program to find Laplace transform of some standard signals
clear all
syms t real; %Let a, t, n be any real variable
syms a real;
syms n real;
syms s complex; %Let s be complex variable
%(a) t
x=t;
disp('(a) Laplace transform of "t" is' )
laplace (x)
%(b) e-at
x=exp(-a*t);
disp('(b)Laplace transform of “exp(-a*t)” is');
laplace (x)
%(c) t e-at 
x=t*exp(-a*t);
disp('(c)Laplace transform of “t*exp(-a*t)” is');
laplace (x)
%(d) cosωt
sg=real(s); %s-complex frequency;sg-sigma;o-omega
o=imag(s);
s=sg+(i*o);
x=cos(o*t);
disp('(d)Laplace transform of “cos(o*t)” is');
laplace (x)
%(e) sinhωt
x=sinh(o*t);
disp('(e)Laplace transform of “sinh(o*t)” is');
laplace (x)
%(f) e-at sinωt
x=exp(-a*t)*sin(o*t);
disp('(f)Laplace transform of “exp(-a*t)*sin(o*t)” is');
laplace (x)
%(g)tn
n=input('Enter the value of n = '); % get value of n from keyboard
x=t^n;
disp(' (g) Laplace transform of "t^n" is ');
laplace (x)
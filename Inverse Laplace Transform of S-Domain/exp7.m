clear all;
syms s t;
X = 2/(s*(s+1)*(s+2));
disp('Inverse Laplace transform of 2/(s(s+1)(s+2)) is');
x = ilaplace(X, s, t); % Specify the Laplace variable and the time variable
simplify(x)

X = 2/(s*(s+1)*(s+2)^2);
disp('Inverse Laplace transform of 2/(s(s+1)(s+2)^2) is');
x = ilaplace(X, s, t); % Specify the Laplace variable and the time variable
simplify(x)
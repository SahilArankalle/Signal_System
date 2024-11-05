%*************** program to plot some standard signals
tmin=-5; dt=0.1; tmax=5;
t=tmin:dt:tmax;          %set a time vector

%*************** unit impulse signal
x1=0;
x2=1;
x=x1.*(t~=0)+x2.*(t==0);  %generate unit impulse signal
subplot(3,3,1);plot(t,x); %plot the generated unit impulse signal
xlabel('t');ylabel('x(t)');title('unit impulse signal');

%*************** unit step signal
x1=0;
x2=1;
x=x1.*(t<0)+x2.*(t>=0);   %generate unit step signal
subplot(3,3,2);plot(t,x); %plot the generated unit step signal
xlabel('t');ylabel('x(t)');title('unit step signal');

%*************** unit ramp signal
x1=t;
x2=0;
x=x1.*(t>=0)+x2.*(t<0);   %generate unit ramp signal
subplot(3,3,3);plot(t,x); %plot the generated unit ramp signal
xlabel('t');ylabel('x(t)');title('unit ramp signal');

%*************** parabolic signal
A=0.4;
x1=(A*(t.^2))/2;
x2=0;
x=x1.*(t>=0)+x2.*(t<0);   %generate parabolic signal
subplot(3,3,4);plot(t,x); %plot the generated parabolic signal
xlabel('t');ylabel('x(t)');title('parabolic signal');

%*************** sinusoidal signal
T=2;                       %declare time period
F=1/T;                     %compute frequency
x=sin(2*pi*F*t);           %generate sinusoidal signal
subplot(3,3,5);plot(t,x);  %plot the generated sinusoidal signal
xlabel('t');ylabel('x(t)');title('sinusoidal signal');

%*************** triangular pulse signal
a=2;
x1=1-abs(t)/a;
x2=0;
x=x1.*(abs(t)<a)+x2.*(abs(t)>a); %generate triangular pulse signal
subplot(3,3,6);plot(t,x); %plot the triangular pulse signal
xlabel('t');ylabel('x(t)');title('triangular pulse signal');

%*************** signum signal
x1=1;
x2=0;
x3=-1;
x=x1.*(t>0)+x2.*(t==0)+x3.*(t<0); %generate signum signal
subplot(3,3,7);plot(t,x); %plot the generated signum signal
xlabel('t');ylabel('x(t)');title('signum signal');

%*************** sinc Pulse
x=sinc(t);                %generate sinc Pulse
subplot(3,3,8);plot(t,x); %plot the generated sinc Pulse
xlabel('t');ylabel('x(t)');title('sinc signal');

%*************** gaussian signal
a=2;
x=exp(-a.*(t.^2));        %generate gaussian signal
subplot(3,3,9);plot(t,x); %plot the generated gaussian signal
xlabel('t');ylabel('x(t)');title('gaussian signal');

%1

Ta = 0.01;

%a 
t = 0:Ta:5;
x = 2*sin(4*pi*t);

subplot(2,3,1)
plot(t,x)
xlabel('tempo'), ylabel('amplitude');

%b
t = 0:Ta:5;
y = cos(10*pi*t);

subplot(2,3,2)
plot(t,y)
xlabel('tempo'), ylabel('amplitude');


%c
z = x.*y;
subplot(2,3,3)
plot(t,z)
xlabel('tempo'), ylabel('amplitude');


%d 
t = 0:Ta:10;
w = 3*sin(pi*t)+2*sin(6*pi*t);
subplot(2,3,4)
plot(t,w)
xlabel('tempo'), ylabel('amplitude');

%e 
t = 0:Ta:5;
[t1,t2] = meshgrid(t,t);
q = 2.*sin(2.*pi*(2.*t1+t2));
subplot(2,3,5)
mesh(t,t,q)















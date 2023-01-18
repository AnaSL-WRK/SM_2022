%2
Ta = 0.1;

%a 
t = 0:Ta:5;
x = 2*sin(4*pi*t);
figure(1)
title('a')
plot(t,x)
xlabel('tempo'), ylabel('amplitude');

%b

t = 0:Ta:5;
y = cos(10*pi*t);
figure(2)
title('b')
plot(t,y)
xlabel('tempo'), ylabel('amplitude');

%c
z = x.*y;
figure(3)
title('c')
plot(t,z)
xlabel('tempo'), ylabel('amplitude');


%d 
t = 0:Ta:10;
w = 3*sin(pi*t)+2*sin(6*pi*t);
figure(4)
title('d')
plot(t,w)
xlabel('tempo'), ylabel('amplitude');

%e 
t = 0:Ta:5;
[t1,t2] = meshgrid(t,t);
q = 2.*sin(2.*pi*(2.*t1+t2));
figure(5)
title('e')
mesh(t,t,q)















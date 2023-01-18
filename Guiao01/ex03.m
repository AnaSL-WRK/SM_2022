Ta = 0.01;


t= [0:Ta:5];

%a
x=2*sin(4*pi*t);

%b
y=cos(10*pi*t);

%c
z=x.*y;

%d
td= [0:Ta:10];
w=3*sin(pi*td)+2*sin(6*pi*td);


figure(1);
plot(t,x,'r');
hold on
plot(t,y,'--b','LineWidth',2);
plot(t,z,'-og');
plot(t,w,'y','LineWidth',2);
hold off
xlabel ('tempo (s)');
ylabel('tempo(s)')
title('Ex3');


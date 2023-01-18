%1
%determinar periodo, freq, pico
% x(t) = A(2pif0 + P)

Ta = 5 * T /1000; %passo
t = [0:Ta:(5*T-Ta)]'; %intervalo tempo

%a
Xmax = 2 %amplitude, pico
T = 0.5; %periodo s
f = 2; %freq Hz
Ta = 5 * T /1000; %passo
t = [0:Ta:(5*T-Ta)]'; %intervalo tempo


x = 2*sin(4*pi*t);


subplot(3,2,1);
plot(t,x);
xlabel('time(s)');
ylabel('amplitude');
title('Signal A');
grid;

%b
Ymax = 1
f = 5;
T = 1 / f;
Ta = 5 * T /1000; %passo
t = [0:Ta:(5*T-Ta)]'; %intervalo tempo

y = sin(10*t + pi/2);

subplot(3,2,2);
plot(t,x);
xlabel('time(s)');
ylabel('amplitude');
title('Signal B');
grid;

%c
Pmax = 1
f = 10;
T = 1 / f;
Ta = 5 * T /1000; %passo
t = [0:Ta:(5*T-Ta)]'; %intervalo tempo

p = sin(20*pi*t + 70*pi/180) + sin(20*pi*t +200*pi/180);

subplot(3,2,3);
plot(t,p);
xlabel('time(s)');
ylabel('amplitude');
title('Signal C');
grid;


%d
Zmax = 1;
f = gcd(6,8)/2;
T = 1 /f;
Ta = 5 * T /1000; %passo
t = [0:Ta:(5*T-Ta)]'; %intervalo tempo

z = sin(6*pi*t) + sin(8*pi*t);

subplot(3,2,4);
plot(t,z);
xlabel('time(s)');
ylabel('amplitude');
title('Signal D');
grid;



%e 
f = gcd(6,8)/2;
T = 1 / f;
Ta = 5 * T /1000; %passo
t = [0:Ta:(5*T-Ta)]'; %intervalo tempo

w = sin(6*pi*t) + sin(8*pi*t + 0.1);

subplot(3,2,5);
plot(t,w);
xlabel('time(s)');
ylabel('amplitude');
title('Signal E');
grid;

%f

f1 = gcd(6,7);
f = gcd(f1,8)/2;
T = 1/f;
Ta = 5 * T /1000; %passo
t = [0:Ta:(5*T-Ta)]'; %intervalo tempo


f = sin(6*pi*t) + sin(7*pi*t) + sin(8*pi*t);

subplot(3,2,6);
plot(t,f);
xlabel('time(s)');
ylabel('amplitude');
title('Signal F');
grid;



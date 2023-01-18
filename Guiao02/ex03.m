%3

%a
T = 0.5; %Periodo do sinal
Ta = 5 * (T /1000);
t = [0:Ta:(5*T-Ta)]';

x = 2*sin(4*pi*t);

a = potencia(x,Ta,T)

%b
f = 5;
T = 1 / f;
Ta = 5 * T /1000; %passo
t = [0:Ta:(5*T-Ta)]'; %intervalo tempo

y = sin(10*t + pi/2);

b = potencia(y,Ta,T)


%c
f = 10;
T = 1 / f;
Ta = 5 * T /1000; %passo
t = [0:Ta:(5*T-Ta)]'; %intervalo tempo

p = sin(20*pi*t + 70*pi/180) + sin(20*pi*t +200*pi/180);

c = potencia(p,Ta,T)


%d
f = gcd(6,8)/2;
T = 1 /f;
Ta = 5 * T /1000; %passo
t = [0:Ta:(5*T-Ta)]'; %intervalo tempo

z = sin(6*pi*t) + sin(8*pi*t);

d = potencia(z,Ta,T)












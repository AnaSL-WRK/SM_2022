ta = 0.01;
t = [0:ta:10];

y= 5 +10*cos(4*pi*t-pi/3) + 6*sin(8*pi*t + pi/2)

figure(1)
plot(t,y)

figure(2)
[X,fx] = Espetro(y,ta);


%%

Ta = 0.01;
t = [0:Ta:20-Ta];
f = gcd(5,7);
Np = 20;
T_F= 0;

y= 8*cos(5*pi*t + pi/4) + 6*sin(7*pi*t-pi/5);

tempo_espetro(y,Ta,f,Np,T_F);

%%

Ta = 0.01;
t = [0:Ta:2.5-Ta];
f = 4;
Np = 1/4*2.5;
T_F  = 0;
z= square(2*pi*f*t);


tempo_espetro(z,Ta,f,Np,T_F);




%{

% x(t) = A(2pif0 + P)

f = sin(6*pi*t) + sin(7*pi*t) + sin(8*pi*t);

f1 = gcd(6,7);
f = gcd(f1,8)/2;
T = 1/f;
Ta = 5 * T /1000; %passo
t = [0:Ta:(5*T-Ta)]'; %intervalo tempo


potencia sinusoide = 1/2, freq diferentes, soma das frequencias

funcao e periodica se f1 f2 e f3 forem multiplos de f0
}%
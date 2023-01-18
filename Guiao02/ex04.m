%4

% Fases = rand(1,3) -->  [0,1]
Fases = rand(1,3) *2*pi - pi; %--->[0, 2pi] -> [-pi, pi]
Fs1 = Fases(1);
Fs2 = Fases(2);
Fs3 = Fases(3); 

f = 10;
T = 0.1;
Ta = 5 * T /1000;
t = [0:Ta:(5*T-Ta)]';

x = sin(2*pi*10*t + Fs1) + sin(2*pi*20*t + Fs2) + sin(2*pi*30*t + Fs3);

% funcao e periodica se f1 f2 e f3 forem multiplos de f0

plot(t,x);
xlabel('time(s)');
ylabel('amplitude');
title('Signal X');
grid;








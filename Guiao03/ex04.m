var = 1000;

N = 4;
K = 100;
N4 = var/4; %n amostras
T = 1;
f0 = 1/T;
Ta = T/var;

x=[0:N4-1 N4:-1:1-N4 -N4:-1]/N4;

[a,b]=FourierCoeficient(x,K,T,Ta);

figure(1)
[x,t] = FourierSinal(Ta,f0,N,a,b); 
plot(t,x,'-','linewidth',2)
grid on

%figure(1);
%for k=1:K
%  FourierSinal(20*Ta,f0,N,a(1:k),b(1:k));
%  drawnow
%  pause(0.1);
%end


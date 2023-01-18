function [x,t] = FourierSinal(Ta,f0,Np,a,b)

%Ta - periodo de amostragem (s)
%f0 - freq do sinal composto (hz)
%Np - numero de periodos a considerar
%ak - vetor (Kx1) com os valores de ak da serie
%bk- vetor (Kx1) com os valores de bk da serie

T0 = 1/f0; %periodo
n = T0/Ta; % nº amostras num período

nAmostras = Np*n;  % nº total de amostras
t = (0:nAmostras-1)*Ta;

x = zeros(1,nAmostras);

for k = 1:length(a)
    sum1 = a(k) * cos(2*pi *k * f0 *t);
    sum2 = b(k) * sin(2*pi *k * f0 *t);   
    x = x + (sum1 + sum2);
end

%for k=1:length(a)
%  x = x+a(k)*cos(k*2*pi*f0*t);
%end
%for k=1:length(b)
%  x = x+b(k)*sin(k*2*pi*f0*t);
%end

if nargout == 0
  if nAmostras <= 10000
    plot(t,x,'o-','linewidth',2);
  end
end
end


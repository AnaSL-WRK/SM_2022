function potencia = potencia (x,Ta,T)

% normally P=A^2 / 2

N = T/Ta;      %numero de amostras
 
potencia = (1/N) * (x(1:N)' * x(1:N));
 
% x e um vetor linha






%OR:

%    x * x' * length(x)

%OR:

%soma = 0;
%
%for n=1:N
%   soma = soma + (x(n))^2;
%end
%
%potencia = 1/N * soma;
 
end
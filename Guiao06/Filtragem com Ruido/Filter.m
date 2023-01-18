function filteredX = Filter(X,f,limits)


% X, f -> [X,f] = Espetro(x,Ta);
% limits -> [400 600] (ex)

N=length(X);

%freqs que queremos do sinal
min = limits(1);
max = limits(2);

H = zeros(1,N);
H(f > min & f < max) = 1; %o que queremos
H(f > -max & f < -min) = 1; % parte negativa

figure
plot(f, H)
title('Filter');
xlim([-50,50])
ylim([0,1.5])
  
filteredX = H.*X;

end
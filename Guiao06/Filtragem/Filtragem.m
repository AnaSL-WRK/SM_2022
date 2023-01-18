load Guitar03.mat;

Ta = 1/fa;

figure
[X,f] = Espetro(x,Ta);
xlim([-2e3 2e3]);
title('Spectrum of wave');
hold on

filteredX = Filter(X,f,[600 1200]);

y = Reconstroi(filteredX,f);
title('sound');
sound(real(y),fa)
load Guitar01.mat

Ta = 1/fa;

figure
[X,f] = Espetro(x,Ta);
plot(f,abs(X));
axis([-5e3 5e3 0 4e-3]);
title('Espetro sinal Guitar01.mat')
xlabel("FreTquencia (Hz)");
ylabel("DFT (Magnitude)");
axis on;
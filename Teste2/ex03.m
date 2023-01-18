load Guitar01.mat

fa_new = 2*fa;
Ta = 1/fa;
Ta_new = 1/fa_new;


tmax1 = (length(x)-1)*Ta;
t1 = [0:Ta:tmax1];

tmax2 = (length(x)-1)*Ta_new;
t2 = [0:Ta_new:tmax2];


figure
plot(t1,x);
title('Sinal de Guitar01 no domínio do tempo')
ylabel('Amplitude')
xlabel('Tempo (s)')


figure
plot(t2,x);
title('Sinal de Guitar01 no domínio do tempo, faNew=2fa')
ylabel('Amplitude')
xlabel('Tempo (s)')



figure
[X,f] = Espetro(x,Ta);
plot(f,abs(X));
title('Espetro sinal Guitar01.mat')
xlabel("Frequencia (Hz)");
ylabel("DFT (Magnitude)");
axis([-5e3 5e3 0 4e-3]);

figure
[X2,f2] = Espetro(x,Ta_new);
plot(f2,abs(X2));
title('Espetro sinal Guitar01.mat, faNew=2fa')
xlabel("Frequencia (Hz)");
ylabel("DFT (Magnitude)");
axis([-5e3 5e3 0 4e-3]);







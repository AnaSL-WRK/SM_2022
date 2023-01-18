load Guitar01.mat

Ta = 1/fa;
tmax = (length(x)-1)*Ta;

t = [0:Ta:tmax];
figure
plot(t,x);
title('Sinal de Guitar01 no domínio do tempo')
ylabel('Amplitude')
xlabel('Tempo (s)')
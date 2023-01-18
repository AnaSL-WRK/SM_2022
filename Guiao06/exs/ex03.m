% Filtrar sinal e reconstruir
load Guitar03.mat

Ta = 1/fa;
figure(1)
[X,f] = Espetro(x,Ta);
title('Spectrum');
xlim([-2e3 2e3]);
hold on

N=length(f);

%freqs que queremos do sinal
min = 400;
max = 600;

filtro = zeros(N,1);
filtro(f > min & f < max) = 1; %o que queremos
filtro(f > -max & f < -min) = 1; % parte negativa

figure(2)
plot(f, filtro)
title('Filter');
xlim([-2e3 2e3]);
ylim([0 2]);



    
Xf = filtro.*X;
[minA,maxA] = bounds(Xf)

figure(3)
[y,Ta] = reconstroi1(Xf,f,4);
title('sound');
sound(real(y),fa)
ola = real(y);


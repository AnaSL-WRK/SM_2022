
load Guitar03.mat
Ta = 1/fa;

figure(1)
[X,f] = Espetro(x,Ta);
xlim([-2e3 2e3]);
hold on

N = length(f);

figure(2)
[x,t] = GeraSinal(N,Ta);
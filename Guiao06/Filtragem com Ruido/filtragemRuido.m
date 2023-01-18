% 1.
Ta = 0.001;
N = 10000;
[x,t] = GeraSinal(N,Ta);
figure(1)
plot(t,x)
title('Sinal gerado em função do tempo')
xlabel('Tempo(seg)')
ylabel('Sinal')
grid


% 2.
figure
[X,f] = Espetro(x,Ta);
Fa = 1/Ta;
plot(f,abs(X))
xlim([-50,50])
xlabel('Frequência (Hz)')
ylabel('Amplitude')
title('Amplitude em função da frequência')
grid


% 3.

filteredX = Filter(X,f,[0 2]);


w = Reconstroi(filteredX,f);
figure
hold on
plot(t,w,'r-')
legend('Sinal original','Sinal filtrado')

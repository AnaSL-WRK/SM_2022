function [X,f] = Espetro(x,Ta)
%ESPETRO retorna e apresenta o espetro (amplitude apenas) 
%de um sinal passado através do seu vetor de amostras

%muitas vezes isto ira dar jeito 
%xlim([-2e3 2e3]);

N = length(x);      %numero amostras
Fa = 1/Ta;
  

X = fft(x)/N;
X = fftshift(X);

  if rem(N,2)==0
      f=[-N/2:N/2-1] * (Fa/N);
  else
      f=[-(N-1)/2:(N-1)/2] * (Fa/N);
  end

    figure
    stem(f,abs(X),'.');
    xlabel('Frequência (Hz)')
    ylabel('Amplitude')
    title('Amplitude em função da frequência')


end

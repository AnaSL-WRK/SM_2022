function [X,f] = AnotherEspetro(x,Ta)
%ESPETRO retorna e apresenta o espetro (amplitude apenas) 
%de um sinal passado através do seu vetor de amostras

N = length(x);      %numero amostras
Fa = 1/Ta;
 

X = fft(x)/N;
X = fftshift(X);

  if rem(N,2)==0
      f=[-N/2:N/2-1] * (Fa/N);
  else
      f=[-(N-1)/2:(N-1)/2] * (Fa/N);
  end
  
stem(f,abs(X),'.');
xlabel("Frequencia (Hz)");
ylabel("DFT (Magnitude)");

end

% a frequencia de amostragem é 1/Ta, 
% logo se nos for dado que foi repetido N vezes, 
% devemos multiplicar por N para ter a frequencia fundamental

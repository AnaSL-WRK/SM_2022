function [X,f] = Espetro(x,Ta,w)

%ESPETRO retorna e apresenta o espetro (amplitude apenas) 
%de um sinal passado através do seu vetor de amostras

  if nargin < 3
    w = 0;
  end

  x = x(:)';

  N = length(x);


  if w == 0
    w = ones(1,N);
  else
    w = blackman(N)';
  end


  Fa = 1/Ta;
  f = (0:N-1)*(Fa/N);
  X = fft(w.*x);

  f = fftshift(f);
  X = fftshift(X);
  idx = find(f >= 0.5*Fa); % encontra os indices para os quais f>=Fa/2
  f(idx) = f(idx)-Fa;      % para esses indices, subtrair Fa (para as frequêcias passarem a ser negativas)

  if nargout == 0       %figure
    stem(f,abs(X));
    xlabel("Frequencia (Hz)");
    ylabel("DFT (Magnitude)");
    zoom on;
    grid on;
  end

end

function [x,Ta] = Reconstroi(X,f)


  N = length(X);

  X = ifftshift(X);
  x = ifft(X)*N;

  fa = f(end)*2;
  Ta = 1/fa;


  t = [0:(N-1)]'*Ta;

  figure;
  plot(t,x);
  xlabel("Tempo (seg)");
  ylabel("Sinal x(t)");
end
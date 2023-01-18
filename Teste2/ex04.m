load ('Guitar01.mat');

Ta = 1/fa;

t = (length(x)-1)*Ta;

T1 = 0:Ta:t;

[X,f] = Espetro(x1,Ta);

filtro = zeros(1,length(f));
filtro(f<488.93 & f>488.91 ) = 1;
filtro(f>-488.93 & f<-488.91 ) = 1;

Z = filtro' .* X;

[X,T] = Reconstroi(Z,f);

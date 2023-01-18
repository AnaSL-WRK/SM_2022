 
load Guitar01.mat
Ta = 1/fa;
tmax = (length(x)-1)*Ta;

t = [0:Ta:tmax];

x_new = zeros(1000,1);
t_new = zeros(1,1000);

 for i= 1:1000
       x_new(i,1) = x(i,1);
 end

 for j= 1:1000
       t_new(1,j) = t(1,j);
 end

 Quantizacao(x_new,t_new,3);
 title('Quantização da onda')
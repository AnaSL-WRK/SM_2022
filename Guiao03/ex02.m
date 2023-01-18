 T = 1;
 Ta = 5 * T /1000;
 f0 = 1;
 Np = 6;


ak = zeros(100,1);
bk = zeros(100,1); 
impares = 1:2:100;
bk(impares) = 4./(impares*pi);    % ./ dividir por cada valor do vetor
[x,t] = ex03_function(0.01,1,6,ak,bk);

plot(t,x);
grid on;
xlabel('Time (s)');
ylabel('Amplitude');
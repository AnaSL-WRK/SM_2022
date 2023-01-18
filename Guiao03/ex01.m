

T0 = 2*pi;
f = 1;
Ta = 5 * T0/1000;
interval = [0:Ta:T0-Ta];
N = 6;

arr = zeros(1,6);

for k = 1:N
    ak = 2/T0 * integral(@(t) x(t)*cos(k*f*t),0,T0);
    







T = 1/f0;

nAmostras = Np*T;
t = 0:Ta:nAmostras-Ta;
numK = length(ak);
x = 0;

for k = 1:numK
    sum1 = ak(k) * cos(2*pi *k * f0 *t);
    sum2 = bk(k) * sin(2*pi *k * f0 *t);   
    x = x + (sum1 + sum2);
end

end

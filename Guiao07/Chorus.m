function y = Chorus(x, fs, MaxDelay, NumComp)

N = length(x);
y = zeros(N,1);

for n=1:NumComp
    % CurDelay = rand('uniform',0,MaxDelay,1,1);
    CurDelay = rand(1,1)*MaxDelay;
    dn = max([1 round(CurDelay*fs)]);
    y(dn: end) = y(dn : end) +x(1 : end-dn+1);
end

Px = x'*x/N; % potencia do sinal x
Py = y'*y/N; % potencia do sinal y

y = y*sqrt(Px/Py);

end
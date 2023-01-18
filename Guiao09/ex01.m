%a)
%nota : entropia e sempre menor que n medio de bits
A = 0.14;
B = 0.64;
C = 0.05;
D = 0.1;
E = 0.07;

prob = [A, B, C, D, E];
entropia = 0;

for i = 1:5 
    entropia = entropia + -prob(i)*log2(prob(i));
end

fprintf('Entropia = %f bpm (bits por simbolo)', entropia)

%b) 
% B = 1,
% A = 00,
% D = 010,
% C = 0110,
% E = 0111

%c

%test
nBits = [2,1,4,3,4];
[NumBits, NumBps] = GeraMensagem(prob,10,nBits)

% inf = 0 + (0 -0.35) x 0.35
% sup = inf * (sup - inf


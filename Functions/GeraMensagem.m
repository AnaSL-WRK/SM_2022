function [NumBits,NumBPS] = GeraMensagem(f,CompMesg, nBits)
%UNTITLED Summary of this function goes here

N = length(f);
NumBits = 0;

mensagem = randsample(1:N,CompMesg,true,f)

for i= 1:N
    f(i)= f(i)/sum(f);
    NumBits = NumBits + sum(mensagem == i)*nBits(i);
end

NumBPS = NumBits/CompMesg; 


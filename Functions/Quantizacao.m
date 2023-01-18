function [index,quantz] = Quantizacao(x,t,n)

    Npal = 2^n;
    amp = max(x);
    delta = amp/Npal;

    partition = -amp + delta*2 : delta*2 : amp - delta*2;
    codebook = -amp+delta : delta*2 : amp-delta;

    [index,quantz] = quantiz(x,partition,codebook);

    if nargout==0
       figure
       plot(t,x)
       hold on
       plot(t,quantz)
       hold off
       grid on
       xlabel('Tempo(s)')
       ylabel('Amplitude')
       legend('Original sampled wave','Quantized wave');
       title("Quantization of wave using nbits = " + n)
    end
end
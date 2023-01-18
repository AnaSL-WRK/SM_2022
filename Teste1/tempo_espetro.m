function [] = tempo_espetro(y,Ta,Fo,Np,T_F)
    N=length(y);
    X=fftshift(fft(y))/N;
    fa=1/Ta;
    df=fa/N;
    f=(0:(N-1))*df-fa/2;


    T=1/Fo;
    N=round(Np*T/Ta);
    t=(0:N-1)*Ta;
    
    if T_F==0 
        plot(t, y);
        xlabel("Tempo (s)")
        ylabel("y(t)")
        grid;
    elseif T_F==1
        plot(f, abs(X));
        xlabel("Frequência (Hz)")
        ylabel("Magnitude")
        grid;
    elseif T_F==2
        subplot(2,1,1);
        plot(t, y);
        xlabel("Tempo (s)")
        ylabel("y(t)")
        grid;
        subplot(2,1,2);
        plot(f, abs(X));
        xlabel("Frequência (Hz)")
        ylabel("Magnitude")
        grid;
    else 
        error("T_F deverá ter valores de 0,1 e 2");
    end
end
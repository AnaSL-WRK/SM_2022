%e
t1= [0:Ta:5];
t2= [0:Ta:5];

for k=1:length(t1)
        e(k,:)=2*sin(2*pi*((2*t1(k))+t2));   %escrever uma linha de cada vez
end


figure(5);
mesh(t1,t2,e);
xlabel ('tempo (s)');
zlabel('amplitude');
ylabel('tempo(s)')
title('signal E');
colormap('gray')
colorbar

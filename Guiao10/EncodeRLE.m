function Arr = EncodeRLE(Image)
[N,M] = size(Image);

Arr = reshape(Image.',1,[]);
uniq = unique(Arr)

for i = 1:length(uniq)
   repetitions(i,1) = sum(Arr==uniq(i)) % number of times each unique value is repeated
end

repetitions 
 % c(1) is repated count(1) times
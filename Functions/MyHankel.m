function H = MyHankel(s,n)
% Hankel matrix generator
% s --> data vector
% n --> model order
% H --> Hankel matrix [N-n,n]
N=length(s);
H=zeros(N-n,n);
for i=(1:1:N-n)
    for j=(1:1:n)
        H(i,j)=s(i-j+n);
    end
end
end


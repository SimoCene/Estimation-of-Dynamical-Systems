function J = MyCostFunc(y,H,Theta,n)
% Cost function evaluation
% y --> Output data
% H --> Hankel matrix [N-n,n] for Type of the mode {'AR', 'ARX'}
% n --> model order 
% Theta --> Parameter estimated
% J --> cost function [real]
N = size(H, 1);
Y=y(1+n:end);
if not(size(H,2) == length(Theta))
    erorr('Dimension of H or Theta not suitable')
end

J=(1/(N))*((Y-H*Theta)'*(Y-H*Theta));

end

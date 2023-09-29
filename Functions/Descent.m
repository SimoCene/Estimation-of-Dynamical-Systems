function Output = Descent(Y,Phi,Theta)
% Cost function for Linear Regression evaluation
% Y --> Output class labels (Nx1)
% Phi --> Input data (Nx3)
% Theta --> Parameter to estimate (3x1)
% J --> cost function [real]
N = size(Y,1);
F = sigmoid(Phi*Theta);
%W = eye(N,N).* (F.*(1-F));
W = diag(F.*(1-F));
Output = inv(Phi'*W*Phi)*(Phi'*(F-Y));

end

function result = sigmoid(z)
    result = 1 ./ (1 + exp(-z));
end
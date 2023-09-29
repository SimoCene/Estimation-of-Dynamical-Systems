function J_ddt = LRCostFuncHessian(Y,Phi,Theta)
% Hessian of the cost function for Linear Regression evaluation
% Y --> Output class labels
% Phi --> Input data
% Theta --> Parameter to estimate
% J --> cost function [real]
N = size(Y,1);
F = sigmoid(Phi*Theta);
%W = eye(N,N).* (F.*(1-F));
W = diag(F.*(1-F));
J_ddt = Phi'*W*Phi;

end

function result = sigmoid(z)
    result = 1 ./ (1 + exp(-z));
end
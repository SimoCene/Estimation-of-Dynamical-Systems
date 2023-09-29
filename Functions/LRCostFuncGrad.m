function J_dt = LRCostFuncGrad(Y,Phi,Theta)
% Gradient of th cost function for Linear Regression evaluation
% Y --> Output class labels
% Phi --> Input data
% Theta --> Parameter to estimate
% J --> cost function [real]

F = sigmoid(Phi*Theta);
J_dt = Phi'*(F-Y); %(3x1)

end

function result = sigmoid(z)
    result = 1 ./ (1 + exp(-z));
end
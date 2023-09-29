function J = LRCostFunc(Y,Phi,Theta)
% Cost function for Linear Regression evaluation
% Y --> Output class labels
% Phi --> Input data
% Theta --> Parameter to estimate
% J --> cost function [real]

F = sigmoid(Phi*Theta);
J_A = Y'*log(F+0.001); % !!!!
J_B = (1-Y)'*log(1-F+0.001); % !!!!
J = -(J_A + J_B);
%I went crazy trying to figure out how to fix the fact that once
%I almost correctly estimated the parameters J, it gave me NaN

%fprintf('F= %.2f \tJ=-(%.2f + %.2f) = %.2f\n',norm(F), J_A, J_B, J);

end

function result = sigmoid(z)
    result = 1 ./ (1 + exp(-z));
end
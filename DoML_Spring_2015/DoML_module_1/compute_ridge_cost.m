function [J, gradient] = compute_ridge_cost(X,y,w,lambda)
%Compute squared error with ridge penalty based on hypothesis w

J = sum((X*w-y).^2) + lambda*w.^2;
gradient = 2*X'*(X*w -y)+2*lambda*w;

% % Or, looped version
% m = length(y); % number of training examples
% %               You should set J to the cost.
% J = 0;
% for i = 1:m %evaluate squared error at each data point
%     J = J + (X(i)*w-y(i))^2;
% end
% J = J + w*lambda.^2;
end
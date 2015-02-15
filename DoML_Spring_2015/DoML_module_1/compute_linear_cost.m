function [J, gradient] = compute_linear_cost(X,y,w)
%Compute squared error based on hypothesis w between input and output

J = sum((X*w-y).^2);
gradient = 2*X'*X*w - 2*X'*y;


% % Or, looped version
% m = length(y); % number of training examples
% %               You should set J to the cost.
% J = 0;
% for i = 1:m %evaluate squared error at each data point
%     J = J + (X(i)*w-y(i))^2;
% end
end
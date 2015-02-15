function [J, grad] = compute_logistic_cost(X,y,hyp,w)
%What's the cost fcn for logistic regression?
lambda = 1;
% hyp = 1 ./ (1 + exp(-X*w)); %the sigmoid fcn
m = length(y); % number of training examples
J = 1/m*sum(-y.*log(hyp)-(1-y).*log(1-hyp)); %pos then neg term
% disp(J)
grad = X'*1/m*(hyp-y);

% grad = zeros(size(w));
% for i = 1:size(w, 1)
%     grad(i) = 1 / m * sum((hyp - y) .* X(:, i));
% end

%Regularized version:
J=1/m*sum(-y.*log(hyp)-(1-y).*log(1-hyp))+lambda/(2*m)*sum(w(2:end).^2);

grad(1) = 1/m*sum((hyp-y).*X(:,1));
for i = 2:size(w,1)
    grad(i) = 1/m*sum((hyp-y).*X(:,i))+lambda/m*w(i);
end
end

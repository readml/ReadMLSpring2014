function [w, gradient] = doLinearRegression(X,y,plot_flag)
% Peform linear regression by minimizing (Xw - y)'(Xw - y)
%
% Inputs:
%	X: data matrix (number of data points, number of features)
%	y: labels (number of data points, 1)
% Outputs:
%	w: the optimal weights as inferred using linear regression
%	gradient: the gradient of the objective function (sanity check to make
%		  sure the gradient is the zero-vector (which it should be at
%		  the optimal w)
% Implement gradient descent version

learning_rate = 5e-8;
w = ones(size(X,2),1); %Some initial prediction
descent_iterations = 500;
for i = 1:descent_iterations
    [J, gradient] = compute_linear_cost(X,y,w);
    w = w - gradient*learning_rate;
%     disp(J)
%     disp(gradient)
    if plot_flag 
        plot_Cost_Gradient(J,w,gradient)
    end
end

% w = X'\y';	% that was easy!
% % compute the gradient as a sanity check (should be all zeros)
% gradient = 2*X'*X*w - 2*X'*y;
end

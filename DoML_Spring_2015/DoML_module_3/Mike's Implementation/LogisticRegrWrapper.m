function [w,gradient] = LogisticRegrWrapper(X,y,ntrain,plot_flag)
%Wrapper for the logistic regression for classification process

X = [ones(size(X,1),1), X];
[Xtrain,ytrain, Xtest, ytest] = splitTrainTest(X,y,ntrain);
% ntrain is the number of training points


% Your implementation here
% You chose how to separate equations and processes into different functions
% Include things such as:
% finding the prediction at some points given some weights
% calculating the accuracy of the prediction
% calculating the cost and gradient given the hypothesis
% performing gradient descent to optimize your hypothesis


if plot_flag
    visualize_performance(X,Xtrain,ytrain,Xtest,ytest,w)
%     w: the weights of each parameter
end

% Your wrapper should output at least the weights and the gradient

% What other information is relevant to understanding the output of your
% model and gradient descent?
end
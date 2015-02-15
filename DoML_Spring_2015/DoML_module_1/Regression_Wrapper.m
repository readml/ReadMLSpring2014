function [J,w] = Regression_Wrapper(X,y,ntrain,plot_flag)
%Function to wrap test-train split, regression, and visualization functions

[Xtrain,ytrain, Xtest, ytest] = splitTrainTest(X,y,ntrain);
% [w, gradient] = doLinearRegression(Xtrain,ytrain,plot_flag);
[w, gradient] = doRidgeRegression(Xtrain,ytrain,plot_flag,40);
disp(gradient); %see that the gradient is near zero
    
if plot_flag
    visualize_performance(X,Xtrain,ytrain,Xtest,ytest,w)
end
%Compute true error (does not need to be ridge adjusted)
[J, gradient] = compute_linear_cost(Xtest,ytest,w);
end

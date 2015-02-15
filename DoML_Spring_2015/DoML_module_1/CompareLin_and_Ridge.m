function [J1,J2,w1,w2] = CompareLin_and_Ridge(X,y,ntrain)
%Function to wrap test-train split, regression, and visualization functions

[Xtrain,ytrain, Xtest, ytest] = splitTrainTest(X,y,ntrain);
[w1, gradient1] = doLinearRegression(Xtrain,ytrain,0);
[w2, gradient2] = doRidgeRegression(Xtrain,ytrain,0,40);

%Compute true error (does not need to be ridge adjusted)
[J1, ~] = compute_linear_cost(Xtest,ytest,w1);
[J2, ~] = compute_linear_cost(Xtest,ytest,w2); %with values from the ridge
display('Cost w/o regularization:')
display(J1)
display('Cost w/ regularization:')
display(J2)
end

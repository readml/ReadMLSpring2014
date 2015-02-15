function [w,gradient] = LogisticRegressionWrapper(X,y,ntrain,plot_flag)
close all;
%Wrapper for the logistic regression for classification process
% X = mapFeature(X(:,1), X(:,2));
X = [ones(size(X,1),1), X];
[Xtrain,ytrain, Xtest, ytest] = splitTrainTest(X,y,ntrain);

[w, gradient] = doLogisticRegression(Xtrain,ytrain,plot_flag);
% disp(gradient); %see that the gradient is near zero

if plot_flag
    visualize_performance(X,Xtrain,ytrain,Xtest,ytest,w)
end

% compute_logistic_cost(Xtest,ytest,w);
test_hyp = logistic_prediction(Xtest,w);
% compute_logistic_cost(Xtest,ytest,test_hyp,w);
test_acc = compute_acc(test_hyp,ytest);
total_acc = compute_acc(logistic_prediction(X,w),y);

fprintf('Test Acc:  %f \n', test_acc);
fprintf('Total Acc: %f \n', total_acc);
disp(w)
disp(gradient)
% fprintf('Weights: \n w(1): %f \n w(2): %f \n w(3): %f \n', w(1),w(2),w(3))
% fprintf('||Grad||: %f \n', norm(gradient)) 
end
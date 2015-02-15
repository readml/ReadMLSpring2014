function [w,gradient] = LogisticRegrWrapperFast(X,y,ntrain,plot_flag)
    %Wrapper for the logistic regression for classification process
    X = [ones(size(X,1),1), X];
    [Xtrain,ytrain, Xtest, ytest] = splitTrainTest(X,y,ntrain);
    % ntrain is the number of training points
  
    XtrainP = projectPoints(Xtrain);
    XtestP = projectPoints(Xtest);

    % this uses a faster optimizer to minimize the cost function 
    [bhat what] = MLRegress(XtrainP,1./length(ytrain)*ones(length(ytrain),1),[ytrain==1 ytrain==0],zeros(size(XtrainP,2),2),10^-8);
    w = bhat(:,1);
    disp(['Training accuracy ',num2str(mean(XtrainP*w>0 == ytrain))]);
    disp(['Testing accuracy ',num2str(mean(XtestP*w>0 == ytest))]);

    if plot_flag
        visualize_performance_multidim(X,Xtrain,ytrain,Xtest,ytest,w)
    end
    
    % Your wrapper should output at least the weights and the gradient
    
    % What other information is relevant to understanding the output of your
    % model and gradient descent?
end

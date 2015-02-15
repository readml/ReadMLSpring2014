function [w,gradient] = LogisticRegrWrapper(X,y,ntrain,plot_flag)
    %Wrapper for the logistic regression for classification process
    
    function plotData(hypothesis)
        figure
        hold on
        correct = 0;
        Guess = linspace(0,100,100);
        for i = 1: length(X(:,1))
            if y(i) == 1
                plot(X(i, 1),X(i, 2),'*c')
                if X(i, 2) >= X(i,1)*hypothesis(1) + hypothesis(2)
                    correct = correct+1;
                end
            else
                plot(X(i, 1),X(i, 2), '*m')
                if X(i, 2) <= X(i,1)*hypothesis(1) + hypothesis(2)
                    correct = correct+1;
                end
            end
        end
        disp(correct/100);
        plot(Guess,Guess*hypothesis(1) + hypothesis(2), 'b')
        
    end
    plotData([-0.70, 110])
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

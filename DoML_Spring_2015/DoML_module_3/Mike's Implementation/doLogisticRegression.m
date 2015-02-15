function [w,gradient] = doLogisticRegression(X,y,plot_flag)
% Do gradient descent or other optimization method
w = -0.5*ones(size(X,2),1); %Some initial prediction
learning_rate = 5e-1;% different learning rates for intercept term and others
learning_rate_0 = 3e-1;
descent_iterations = 10000;
if (plot_flag>1)
hold on;
end
for i = 1:descent_iterations
    hyp = logistic_prediction(X,w);
    [J,gradient] = compute_logistic_cost(X,y,hyp,w);
    w(1) = w(1) - gradient(1)*learning_rate_0;
    w(2:end) = w(2:end) - gradient(2:end)*learning_rate;
    if (plot_flag>1)
        figure(1)
        hold on;
        plot(i,J,'o')
    if (plot_flag>2)
        figure(2)
        hold on;
        plot(i,w(1),'go')
        plot(i,w(2),'co')
        plot(i,w(3),'ro')
%         drawnow;
    end
    end    
end
end

function hyp = logistic_prediction(X,w)
hyp = 1 ./ (1 + exp(-X*w)); %the sigmoid fcn;
end

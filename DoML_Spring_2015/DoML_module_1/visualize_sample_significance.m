function visualize_sample_significance(X,y)

% Select the range of sample sizes with which to run regression, largest
% should be half of the data set
trial_vec = floor(linspace(10,length(y),20));
for i = 1:length(trial_vec)
  J(i) = Regression_Wrapper(X,y,trial_vec(i),0);
end
semilogx(trial_vec,J,'.')
xlabel('Sample Size')
ylabel('Cost')
title('Dependency of Accuracy on Sample Size')
end

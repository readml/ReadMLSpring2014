function [Xtrain,ytrain, Xtest, ytest] = splitTrainTest(X,y,ntrain)
% Splits a dataset into a training set and a test set
%
% Inputs:
%	X: data matrix (number of data points, number of features)
%	y: labels (number of data points, 1)
%	ntrain: the number of points to use for training (the rest are used
%		for testing).
% Outputs:
%	Xtrain: the training data points
%	ytrain: the training labels
%	Xtest: the testing data points
%	ytest: the testing labels
	r = randperm(length(y));%generates a random permutation of integers 1:k 
	traininds = r(1:ntrain);%Together with randperm ntrain takes a random subset
	testinds = r(ntrain+1:end);%The remainder of the data
	Xtrain = X(traininds,:);
	ytrain = y(traininds,:);
	Xtest = X(testinds,:);
	ytest = y(testinds,:);%Splits the data for testing
end

function visualize_performance(X,Xtrain,ytrain,Xtest,ytest,w)
% Plot the train and test data in different colors and visually evaluate
% performance of prediction

figure(2)
hold on;
plot(Xtrain,ytrain,'b.')
plot(Xtest,ytest,'r.')
xvec = [min(X) max(X)];
yvec = xvec*w;
plot(xvec,yvec,'m')
legend('Train Data','Test Data','Prediction Line')
title('Visualization of Prediction')
xlabel('Input, or, Known Attribute')
ylabel('Output, or, dependent attribute')
end

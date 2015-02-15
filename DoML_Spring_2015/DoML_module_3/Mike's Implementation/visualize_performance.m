function visualize_performance(X,Xtrain,ytrain,Xtest,ytest,w)
% visualization of performance for a classification problem of two
% features, possibly with higher-order projection
figure;
hold on;
% works for any set based on two variables
plot(Xtrain((ytrain==0),2),Xtrain((ytrain==0),3),'bo')
plot(Xtrain((ytrain==1),2),Xtrain((ytrain==1),3),'b+')
plot(Xtest((ytest==0),2),Xtest((ytest==0),3),'ro')
plot(Xtest((ytest==1),2),Xtest((ytest==1),3),'r+')

%Calculate and plot the decision boundary line
plot_x = [min(Xtest(:,2)),  max(Xtest(:,2))];
plot_y = (-1./w(3)).*(w(2).*plot_x + w(1));
plot(plot_x,plot_y)

% Non-Linear decision boundary visualization code
% To use this, you need a function with the following spec:
% hyp = logistic_prediction(X,w)

% feat1 = linspace(min(X(:,2)), max(X(:,2)));
% feat2 = linspace(min(X(:,3)), max(X(:,3)));
% [F1,F2]=meshgrid(feat1,feat2); %actually, meshgrid not necessary
% z = zeros(size(F1));
% for i = 1:length(feat1)
%     for j = 1:length(feat2)
%         z(i,j) = logistic_prediction([1 F1(i,j) F2(i,j)],w); %the prediction, given parameter values
% %         z(i,j) = logistic_prediction([mapFeature(F1(i,j),F2(i,j))],w);% When using mapFeature
%     end
% end
% contour(feat1,feat2,z)
% contour(feat1,feat2,z,[.5,.5],'linewidth',3)
end


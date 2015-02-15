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


Xall = [Xtrain; Xtest];
minvals = min(Xall(:,2:3));
maxvals = max(Xall(:,2:3));

[x1 x2] = ndgrid(linspace(minvals(1),maxvals(1),100),linspace(minvals(2),maxvals(2),100));

X = [ones(length(x1(:)),1) x1(:) x2(:)];
Xp = projectPoints(X);

% project points
yhat = reshape((Xp*w)>0,size(x1));
hold on;
contour(x1,x2,yhat,1);
end


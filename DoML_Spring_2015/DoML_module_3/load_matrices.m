data = load('ex2data1.txt');
y_1 = data(:,3);
X_1 = data(:,1:2);
data = load('ex2data2.txt');
y_2 = data(:,3);
X_2 = data(:,1:2);
data = load('ex3data.txt');
y_3 = data(:,3);
X_3 = data(:,1:2);

X_4=mapFeature(X_2(:,1),X_2(:,2))

X_5 = X_4(:,3:4)
function plot_Cost_Gradient(J,w,gradient)
%Plot the cost against the hypothesis along with the slope of the cost
%function 

%(Given)
hold on;
plot(w,J,'b.')
epsilon = 0.1;
xvec = [w-epsilon,w+epsilon];
yvec = [J-gradient*epsilon,J+gradient*epsilon];
plot(xvec,yvec,'r')
title('Visualization of Gradient Descent')
ylabel('Cost')
xlabel('Hypothesis')
end

function accuracy = compute_acc(hyp,y)
% correct = zeros(size(y));
correct = or(and((hyp>.5),(y==1)),and((hyp<=.5),(y==0)));
accuracy = mean(correct);
end

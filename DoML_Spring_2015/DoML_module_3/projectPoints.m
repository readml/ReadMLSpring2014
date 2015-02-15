function P = projectPoints(X)
%	P = [X X(:,2:end).*X(:,2:end) X(:,2).*X(:,3)];
	P = X;
end

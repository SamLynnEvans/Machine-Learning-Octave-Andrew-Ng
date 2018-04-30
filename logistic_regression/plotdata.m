function = plotdata(X, Y)

pos = find(Y==1);
neg = find(Y==0);

plot(X(neg, 2), X(neg, 3), 'o')
hold on
plot(X(pos, 2), X(pos, 3), '+')

end

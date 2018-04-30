function[X] = reducedatarangeX(X)

n = columns(X);

for i = 1:n
X(:, i) = X(:, i) ./ max(X(:, i));

end

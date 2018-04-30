function [cost_log, theta] = logisticregressionGD(X, Y, alpha, theta, iterations)

m = length(X);
cost_log = zeros(iterations, 1);

for i = 1:iter

hx = sigmoid(X * theta);
theta = theta - alpha/m * X' * (hx.-Y);
cost_log(i) = 1/m * sum(-Y'*log(hx) - (1 - Y)' * log(1 - hx));

end

end

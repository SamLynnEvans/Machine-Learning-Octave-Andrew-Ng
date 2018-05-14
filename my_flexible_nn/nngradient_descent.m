function[theta] = gdNnVec(X, theta, layer_format, y, lambda, alpha)

for i = 1:10000

m = length(y);

a = forwardPropagationVec(X, theta, layer_format);

[J, Delta] = backPropagationVec(a, theta, layer_format, y);

for L = 1:length(layer_format) - 1

theta{L} = theta{L} - alpha/m * Delta{L}  + (lambda/m)*[zeros(size(theta{L},1), 1) theta{L}(:, 2:end)];

end

end

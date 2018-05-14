function[J grad] = nncostfunction(X, theta, layer_format, y, lambda)

a = forward_propagation(X, theta, layer_format);

m = length(y);

layers = length(layer_format);

%cost function

J = - 1/m * sum(diag((log(a{layers}) * y + log(1 - a{layers}) * (1 - y))));

%back propagation

sigma{layers} = a{layers} - y';

for L = layers - 1:-1:2
   
sigma{L} = (theta{L}' * sigma{L + 1} .* (a{L}.*(1-a{L})))(2:end, :);

end

grad = [];

for L = 1:layers-1

Delta{L} = sigma{L + 1} * a{L}';
grad = [Delta{L}(:); grad];

end

end

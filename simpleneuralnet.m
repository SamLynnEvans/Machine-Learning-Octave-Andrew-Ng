function[theta] = simpleneuralnet(X, y, layer_format, K)
{

layers = length(layer_format);

a{1} = [ones(1, length(X)); X'];

%forward prop

for i = 1:layers - 1
		
theta{i} = rand(layer_format(i + 1), length(a{i}));
a{i + 1} = [ones(1, size(a{1}, 2); (sigmoid(theta{i} * a{i})];

end

%format y

c = 1:K;

y == (y == c)';

%Calculate cost

hx = a{layers};
J = sum(diag(log(hx) * -y + (1-log(hx)) * (1 - y)));

%back prop

sigma{layers} = hx - y;

for L = layers - 1:-1:1

sigma{L} = (theta{L}' * sigma{L + 1}).*(a{L}.*(a{L}




end

}

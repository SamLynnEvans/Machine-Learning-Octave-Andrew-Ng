function[theta] = run_neural_network(X, y, layer_format, iter, lambda, K)

theta = create_theta(layer_format);

costFunction = @(p) nncostfunction(p, X, y, layer_format, lambda, K);

%[J, grad] = nncostfunction(theta, X, y, layer_format, lambda, K);

%[numgrad] = computeNumericalGradient(costFunction, theta);


%[grad, numgrad]

%diff = norm(numgrad-grad)/norm(numgrad+grad)

options = optimset('MaxIter', iter);

[theta, cost] = fmincg(costFunction, theta, options);

end

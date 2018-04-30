function = plotboundary(X, theta)
theta_plot = zeros(2, 1);
theta_plot(1) = theta(1) / -theta(3);
theta_plot(2) = theta(2) / -theta(3);
plot(X(:,2), X(:, 2)*theta_plot(2) + theta_plot(1))
enq

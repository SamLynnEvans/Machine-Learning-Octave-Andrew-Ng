function[X, Y] = formatdata(data)

%% Function that loads data and creates two variables X and Y. Y is output data, X is input. Column of ones is appended to start of X.

% Read data into X
X = csvread(data);

% Get the last column
last_column = columns(X);

% Get the length
m = length(X);

% Assign Y the values from the last columnof X
Y = X(:, last_column);

% Delete last column from X
X(:, last_column) = [];

% Append column of ones to X
X = [ones(m, 1) X];

end

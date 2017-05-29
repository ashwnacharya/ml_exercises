function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters



    predictions = X * theta;
    error = predictions - y

    % step0 = alpha * sum(error) / m;
    % step1 = alpha * sum(error .* X(:,2)) / m;
    % step2 = alpha * sum(error .* X(:,3)) / m;

    % step = [step0; step1; step2]
    % theta = theta - step

    step = (sum(bsxfun(@times, error, X)) * alpha / m)'
    theta = theta - step

    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X, y, theta);

end

end

function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
    %GRADIENTDESCENT Performs gradient descent to learn theta
    %   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
    %   taking num_iters gradient steps with learning rate alpha

    % Initialize some useful values
    m = length(y); % number of training examples
    J_history = zeros(num_iters, 1);

    for iter = 1:num_iters

        % ====================== YOUR CODE HERE ======================
        % Instructions: Perform a single gradient step on the parameter vector
        %               theta. 
        %
        % Hint: While debugging, it can be useful to print out the values
        %       of the cost function (computeCost) and gradient here.
        %

        predictions = X * theta;
        error = predictions - y;

        %repeated = repmat(error, 1, size(X)(2))

        % step0 = alpha * sum(error .* X(:,1)) / m;
        % step1 = alpha * sum(error .* X(:,2)) / m;

        step = (sum(bsxfun(@times, error, X)) * alpha / m)'
        theta = theta - step
        % ============================================================

        % Save the cost J in every iteration    
        J_history(iter) = computeCost(X, y, theta);

    end

end

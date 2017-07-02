function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%

% choices = [0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30]
% errors = zeros(64:1)

% [p,q] = meshgrid(choices, choices);
% pairs = [p(:) q(:)];

% for i =1:size(pairs,1)
%     C_temp = pairs(i,1);
%     sigma_temp = pairs(i,2);

%     model= svmTrain(X, y, C_temp, @(x1, x2) gaussianKernel(x1, x2, sigma_temp));
%     predictions = svmPredict(model, Xval);
%     errors(i) = mean(double(predictions ~= yval));
%     fprintf('Iteration %f error %f C_temp %f sigma_temp %f', i, errors(i), C_temp, sigma_temp)

% end

% [min_error, min_error_index] = min(errors);
% C = pairs(min_error_index,1);
% sigma = pairs(min_error_index,2);

% If you run the above search you will end up the following results.
C = 1;
sigma =  0.10000;

% =========================================================================

end

% Learn linear seperating hyperplane by using the DMO learning algorithm
%
% [w, theta]=learnDMO(X, S, num_epochs)
%
%Input:
%
% X : training samples (one sample per row)
% S : binary class labels (class '-1' and class '+1')
% num_epochs : maximum number of training epochs to be performed
%
%Output:
%
% w : unit normal vector of the separation hyperplane (hesse normal form)
% theta : threshold (hesse normal form)
function [w, theta] = learnDMO(X, S, num_epochs)

%N : dimension of training samples
N = size(X, 2);

%TODO: initialize weight vector (theta not(!) included) randomly
w = 

for epoch = 1:num_epochs
    % get current time stamp
    tStart = tic;
    fprintf('starting epoch %.2d...', epoch);
    
    %TODO: extract training samples and class labels of class +1
    X_plus = 
    S_plus = 
    
    %TODO: get x_min_plus
    x_min_plus = 
    
    %TODO: extract training samples and class labels of class -1
    X_minus = 
    S_minus = 
    
    %TODO: get x_min_minus
    x_min_minus =
    
    %TODO: adapt weight vector, i.e. apply DMO learning rule
    w = 
    
    % visualize current hyperplane
    if N == 2
        %TODO: compute threshold according to current epoch 
        % (just for plotting purpose)
        theta = 
        plotData(1, X, S, []);
        plotPlane(1, w, theta, 'k-');
        pause(.2);
    end
    
    % get time duration of current epoch
    tElapsed = toc(tStart);
    fprintf('completed (took %.2fs).\n', tElapsed);
end

%TODO: compute final threshold
theta = 

%TODO: normalize weight vector and threshold (hesse normal form)
theta =
w =

% final plot of hyperplane (plausibility check for correct normalization)
if N == 2
    plotData(1, X, S, []);
    plotPlane(1, w, theta, 'k-');
end

return
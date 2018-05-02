% Learn linear seperating hyperplane by using the perceptron learning algorithm
%
% [w, theta]=learnPerceptron(X, S, epsilon, num_epochs)
%
%Input:
%
% X : training samples (one sample per row)
% S : binary class labels (class '-1' and class '+1')
% epsilon : learning rate
% num_epochs : maximum number of training epochs to be performed
%
%Output:
%
% w : unit normal vector of the separation hyperplane (hesse normal form)
% theta : threshold (hesse normal form)
function [w, theta]=learnPerceptron(X, S, epsilon, num_epochs)

%L : number of training samples, N : dimension of training samples
[L,N] = size(X);

%TODO: initialize extended weight vector (theta included) randomly
w = zeros(

%TODO: extend data matrix X by "-1" column (threshold trick)
X = 

for epoch=1:num_epochs
    % get current time stamp
    tStart = tic;
    fprintf('starting epoch %.2d...', epoch);
    
    %TODO: reset boolean "so_far_no_misclassification" flag
    
    %TODO: generate random permutation of training samples and class labels

    % iterate through all training samples
    for t=1:L
        
        %TODO: select training sample and corresponding class label
        %according to generated random permutation
        x = 
        s = 
        
        %TODO: classify selected training sample with current w
        y = 
        
        %TODO: eventually adapt "so_far_no_misclassification" flag
        
        %TODO: adapt weight vector, i.e. apply perceptron learning rule
        w =
        
        % visualize current hyperplane
        if N==2
            plotData(1, X, S, x);
            plotPlane(1, w(1:2), w(3), 'k-');
            pause(.05);
        end
    end
    % get time duration of current epoch
    tElapsed = toc(tStart);
    fprintf('completed (took %.2fs).\n', tElapsed);

    % TODO: exit loop depending on "so_far_no_misclassification" flag
end

%TODO: normalize weight vector and threshold (hesse normal form)
w =

%TODO: assign weight vector and threshold to output variables
theta =
w =

% final plot of hyperplane (plausibility check for correct normalization)
if N == 2
    plotData(1, X, S, []);
    plotPlane(1, w, theta, 'k-');
end

return;
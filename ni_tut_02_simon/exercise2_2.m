clear all;
close all;
clc;

load('ueb22.mat');

[axis,points] = size(X);

tmp = 0;
theta = 5;
w = ones(1,points);

C = neuron_classify(X,w,theta);

for i = 1 : points
    if C(i) == 1;
        plot(X(1,i), X(2,i),'og')
        hold on
    else
        plot(X(1,i), X(2,i),'or')
        hold on
    end
end


function C = neuron_classify(X, w, theta)
    [~, col] = size(X);
    C = zeros(1, col);
    for i = 1:col
        tmp = w'*X(i)-theta;
        if tmp >= 0
            C(i) = 1;
        else
            C(i) = 0;
        end
    end 
end
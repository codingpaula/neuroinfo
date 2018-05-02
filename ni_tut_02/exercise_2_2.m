clear all;
clc;

% load ueb21.mat
load ueb22.mat

[dim,input] = size(X);

Weights = zeros(dim,1);
% Weights etc ueb21
% Weights(1) = 0.36;
% Weights(2) = 0.9;
% threshold = 0.85;

% Weights etc ueb22
Weights(1) = -0.4;
Weights(2) = -0.55;
threshold = 2.5;


Output = neuron_classify(X,Weights,threshold);

figure();
hold on
plot(1:input,Output,'rx');
plot(1:input,Y,'bo');

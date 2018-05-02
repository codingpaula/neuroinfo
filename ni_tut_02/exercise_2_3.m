clear all;
clc;
close all;
% ueb21 classifier: w(1) = 0.36, w(2) = 0.9, theta = 0.85
% other ueb21 classifier: w(1) = 1, w(2) = 3, theta = 0
% load ueb21.mat
% ueb22 classifier: w(1) = -0.4, w(2) = -0.55, theta = 2.5
% better ueb22 classifier: w(1) = -0.5, w(2) = -0.5, theta = 2.5
load ueb22.mat

[dim,input] = size(X);
Weights = zeros(dim,1);

% Weights etc ueb21
% Weights(1) = 0.33;
% Weights(2) = 1;
% threshold = 0;

% Weights etc ueb22
Weights(1) = -0.5;
Weights(2) = -0.5;
threshold = 2.5;

Output = neuron_classify(X,Weights,threshold);

figure(1);
hold on
plot(1:input,Output,'rx');
plot(1:input,Y,'bo');

indexOne = find(Y > 0);
indexMinusOne = find(Y < 0);
myIndexOne = find(Output > 0);
myIndexMinusOne = find(Output < 0);

figure(2);
hold on
% plot right +1s
plot(X(1,indexOne),X(2,indexOne),'kx');
% plot our +1s
plot(X(1,myIndexOne),X(2,myIndexOne),'ko');
% plot right -1s
plot(X(1,indexMinusOne),X(2,indexMinusOne),'rx');
% plot our -1s
plot(X(1,myIndexMinusOne),X(2,myIndexMinusOne),'ro');

plot_classline(2,Weights,threshold);
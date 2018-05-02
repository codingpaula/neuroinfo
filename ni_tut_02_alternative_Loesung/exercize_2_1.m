%% Exercise 2.1
% clear workspace
close all;
clear all;
clc

%load input
load('ueb21.mat');

%initialisation
blue = zeros(2,50);
red = zeros(2,50);

%sort blue and red

    for i = 1:50
        if Y(i) == 1
            red(:, i) = X(:, i);
        else
            blue(:, i) = X(:, i);
        end
        
    end
%remove zeros
red = nonzeros(red);
red = reshape(red,[2,length(red)/2]);
blue = nonzeros(blue);
blue = reshape(blue,[2,length(blue)/2]);

%plot
figure(1)
plot(red(1, :), red(2, :), 'redo');
hold on
plot(blue(1, :), blue(2, :), 'blue+');
title('Given Classification')
%scale window
axis equal
axis([-11 11 -11 11])
%% Exercise2.2
% clear workspace
clear all;
clc

%load input
load('ueb21.mat');

%parameters
w = zeros(2, 1);
%solution ueb21: w=(1,3), theta = 0
w(1, 1) = 0;
w(2, 1) = 1; 
theta = 0;
C = neuron_classify(X, w, theta);

%initialisation
blue = zeros(2,50);
red = zeros(2,50);

%sort blue and red

    for i = 1:50
        if C(i) == 1
            red(:, i) = X(:, i);
        else
            blue(:, i) = X(:, i);
        end
        
    end
%remove zeros
red = nonzeros(red);
red = reshape(red,[2,length(red)/2]);
blue = nonzeros(blue);
blue = reshape(blue,[2,length(blue)/2]);

%plot
figure(2)
plot(red(1, :), red(2, :), 'redo');
hold on
plot(blue(1, :), blue(2, :), 'blue+');
hold on
plot_classline(2, w, theta);
title('Classification with neuron classify')
%scale window
axis equal
axis([-11 11 -11 11])

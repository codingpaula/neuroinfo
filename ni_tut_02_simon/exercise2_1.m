clear all;
close all;
clc;

load('ueb21.mat');

[axis,points] = size(X);

for i = 1 : points
    if Y(i) == 1;
        plot(X(1,i), X(2,i),'or')
        hold on
    else
        plot(X(1,i), X(2,i),'ob')
        hold on
    end
end
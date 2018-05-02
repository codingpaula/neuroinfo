clear;
close all;
clc;

load ueb21.mat

figure(1);

indexOne = find(Y > 0);
indexMinusOne = find(Y < 0);

hold on
% plot(X(1,Y==1)
plot(X(1,indexOne),X(2,indexOne),'or');
plot(X(1,indexMinusOne),X(2,indexMinusOne),'xb');
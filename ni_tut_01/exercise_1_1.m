clear all;
clc;

load('X.mat');

figure(1);

% initialize stuff
[input,time] = size(X);
tau = 3;

for i = 1 : input
    
    x_temp = X(i,:);
    v_temp = 0;
    V = zeros(1,time);
    
    plotting = subplot(3,3,i);
    
    for t = 1 : time
        V(t) = v_temp - 1/tau * v_temp + x_temp(t);
        v_temp = V(t);
    end

    hold on
    plot(plotting,V(1,:),'red');
    plot(plotting,x_temp,'blue');
    
end

clear all;
clc;

load('X.mat');

figure(1);

% initialize stuff
[input,time] = size(X);
tau = 3;
theta = 1;

for i = 1 : input
    
    x_temp = X(i,:);
    v_temp = 0;
    V = zeros(1,time);
    Spikes = zeros(1,time);
    Theta = ones(1,time);
    
    plotting = subplot(3,3,i);
    
    for t = 1 : time
        V(t) = v_temp - (1/tau) * v_temp + x_temp(t);
        v_temp = V(t);
        
        if V(t) >= theta
            Spikes(t) = 1;
        else
            Spikes(t) = 0;
        end
    end

    hold on
    plot(plotting,V,'red');
    plot(plotting,x_temp,'blue');
    plot(plotting,Theta,'green');
    bar(plotting,Spikes, 0.4, 'grouped');
    
end

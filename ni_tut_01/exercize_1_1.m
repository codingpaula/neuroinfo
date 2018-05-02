%Exersize1.1
% clear workspace
close all;
clear all;
clc

%load input
load('X.mat');

%constants

tau = 3;
tau_s =2;
teta = 1;
%iterate over Input Functions
for functionNumber =1:6
    %initialization
    teta_t = 0;
    teta_t_plusone = 0;
    s = 0;
    v_t=0;
    v_t_plusone=0;
    Input = zeros(1, 200);
    Activity = zeros(1, 200);
    Teta = zeros(1, 200);
    %iterate over all timesteps

    for t = 1:200
        Input(1,t) = X(functionNumber, t);
        
        %calculate v(t+1)
        v_t_plusone = v_t - (1/tau) * v_t + X(functionNumber,t);
        Activity(1,t) = v_t_plusone;
        
        %calculate teta(t+1)
        teta_t_plusone = teta_t - (1/tau_s)*teta_t + s;
        Teta(1,t) = teta + teta_t_plusone;
        
        %calculate spike
        if v_t_plusone >= Teta(1,t)
            bar(t, 0.4, 'grouped', 'black');
            s = 1;
        else
            s = 0;
        end
        %save for next step
        v_t = v_t_plusone;
        teta_t = teta_t_plusone;
    end

    %plot
    figure(1)
        subplot(2,3,functionNumber)
        plot((1:200), Input(1, :), 'green');
        hold on
        plot((1:200), Activity(1, :), 'blue');
        title(['Input Function ' num2str(functionNumber)]);
        hold on
        plot((1:200), Teta, 'red');
end
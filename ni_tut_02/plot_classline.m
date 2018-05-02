function [] = plot_classline(h, w, theta)
% wTx - theta = 0
% gilt fuer welche x?
    if w(2) == 0
        start = theta/w(1);
        X = [start, start];
        Y = [-10, 10];
    else
        y = theta/w(2);
        m = -w(1)/w(2);
        X = [-10, 10];
        Y = [(y + (m*(-10))), (y + (m*(10)))];
    end
    hold on
    plot (X(:),Y(:), 'green');
    axis ([-10 10 -10 10])
end


% Plots the classification plane of an artificial neuron with two inputs.
%
% plotPlane(h, w, theta, s)
%
% input:    h        Handle of figure to plot into
%           w        Weight vector (two-dimensional)
%           theta    Classification threshold
%           s        Plot style (e.g. 'k-')
function plotPlane(h,w,theta,s)

figure(h)

% and plot classification line

a=axis; % get axis limits (a=[xmin xmax ymin ymax])
% compute intersection points with upper and lower figure edges
gy=[a(3) a(4)]; % y-values are ymin and ymax
gx=[0 0]; % initialize x-values with zero
if (w(1)~=0) % plane is not parallel to x-axis
    % compute x-values with classification plane formulae:
    % w'x-theta=0 that means
    % w(1)*gx+w(2)*gy-theta=0
    % therefore
    gx(1)=(theta-w(2)*gy(1))/w(1);
    gx(2)=(theta-w(2)*gy(2))/w(1);
else
    % Plane is parallel to x-axis and has intersection points with left and
    % right figure edges at [xmin, theta/w(2)] and [xmax, theta/w(2)]
    gx=[a(1) a(2)];
    gy=[theta theta]/w(2);
end
hold on;
plot(gx,gy,s);
axis equal
% It is possible that the intersection points with the upper and lower
% figure edges are not in the range of the figure box (i.e. if the x-values
% gx are lesser than xmin or greater than xmax). To prevent a change in the
% figure box, set axis limits back to original ones with axis(a).
axis(a);
hold off

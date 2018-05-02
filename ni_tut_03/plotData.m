% Plots 2D samples according to binary class labels (class '1' in red
% circles and class '-1' in blue crosses). Optionally, a single further 2D
% sample can be plotted as black asterisk (e.g. for highlighting).
%
% plotData(h, X, S, x)
%
% Input:
%
% h : handle of figure to plot into
% X : data matrix (one sample per row)
% S : class labels (either 1 or -1)
% x : optional sample to highlight
function plotData(h, X, S, x)

figure(h);

plot(X(S==1,1), X(S==1,2), 'ro');
hold on;
plot(X(S==-1,1), X(S==-1,2), 'bx');

if ~isempty(x)
    plot(x(1), x(2), 'k*')
end

axis equal;

return;

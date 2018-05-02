%neuron_classify
function [C] = neuron_classify(X, w, theta);
%transpose w
wt = transpose(w);
%initialize C
C = zeros(1, 50);
for i = 1:50
    if (wt*X(:,i))-theta >= 0
        C(1,i) = 1;
    else
        C(1,i) = -1;
    end
        
end
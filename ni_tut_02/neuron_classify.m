function C = neuron_classify(X, w, theta)
% matrix besser! C = wX - theta '
    [dim,input] = size(X);
    C = zeros(1,input);
    for i = 1 : input
        dot(w,X(:,i))
        if dot(w,X(:,i)) - theta < 0
            C(i) = -1;
        else
            C(i) = 1;
        end
    end
end


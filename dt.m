%% Difference transform

function [trans, basis] = dt(origin)
n = length(origin);
basis = zeros(n);
for i = 1 : n
    if (i < n)
        basis(i, i) = 1;
        basis(i, i + 1) = -1;
    else
        basis(i, i) = rand();
    end
end
trans = basis * origin';
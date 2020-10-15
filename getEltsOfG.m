function A = getEltsOfG(G)
A = zeros(1, length(G));

while any(A(end,:) ~= G-1)
    i = find(A(end,:) ~= G-1, 1, 'last');
    A(end+1,:) = 0;
    A(end,1:(i-1)) = A(end-1,1:(i-1));
    A(end,i) = A(end-1,i) + 1;
end
end
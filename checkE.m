function checkE(G, E)
disp(['Read E as:' newline]);
disp(E);

if size(E, 2) ~= size(G, 2)
    error('Elements of E do not have correct lengths.')
end

numE = size(E, 1);
disp(['E has size ' num2str(numE) '.' newline]);

if any(E < 0 | E >= ones(numE, 1)*G, 'all')
    error('Some coordinates of elements of E are out of range.')
end
end
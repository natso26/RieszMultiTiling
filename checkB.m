function checkB(G, E, B)
disp(['Read B as:' newline]);
disp(B);

if size(B, 2) ~= size(G, 2)
    error('Elements of B do not have correct lengths.')
end

numE = size(E, 1);
if size(B, 1) ~= numE
    error('B does not have the correct size.')
end

if any(B < 0 | B >= ones(numE, 1)*G, 'all')
    error('Some coordinates of elements of B are out of range.')
end
end
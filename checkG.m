function checkG(G)
disp(['Read G as:' newline]);
disp(G);

if size(G, 1) ~= 1
    error('G must be a row vector.')
end

dim = size(G, 2);
disp(['G has ' num2str(dim) ' coordinates.' newline]);
end
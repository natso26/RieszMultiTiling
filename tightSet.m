function answer = tightSet(G, E, quiet)
numG = prod(G);
eltsOfG = getEltsOfG(G);

numE = size(E, 1);
allBIndices = combnk(2:numG, (numE-1));
if ~quiet
    disp(['There are ' num2str(size(allBIndices, 1)) ' B''s to try.' newline])
end

bestQ = [0, inf, inf, 0];
bestB = {};

for i = 1:size(allBIndices, 1)
    B = eltsOfG([1 allBIndices(i,:)],:);
    
    Q = tightPair(G, E, B, true);
    
    if Q(1) > bestQ(1)
        bestQ(1) = Q(1);
        bestB{1} = B;
    end
    if Q(2) < bestQ(2)
        bestQ(2) = Q(2);
        bestB{2} = B;
    end
    if Q(3) < bestQ(3)
        bestQ(3) = Q(3);
        bestB{3} = B;
    end
    if Q(4) > bestQ(4)
        bestQ(4) = Q(4);
        bestB{4} = B;
    end
end

if ~quiet
    names = {'L(E)   ', 'U(E)   ', 'cond(E)', 'D(E)   '};
    
    for i = 1:4
        disp([names{i} ' = ' num2str(bestQ(i), '%.15g')]);
        disp(['Attained for B =' newline]);
        disp(bestB{i});
    end
end

answer = {bestQ, bestB};
end
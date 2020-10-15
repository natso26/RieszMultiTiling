function Q = tightPair(G, E, B, quiet)
evalMatrix = computeEvalMatrix(G, E, B);

if ~quiet
    disp(['The evaluation matrix is:' newline]);
    disp(evalMatrix);
end

singVals = svd(evalMatrix);
if ~quiet
    disp(['Its singular values are:' newline]);
    disp(singVals);
end

LEB = singVals(end)^2;
UEB = singVals(1)^2;
condEB = singVals(1)/singVals(end);
DEB = prod(singVals);

if ~quiet
    disp(['L_E(B)    = ' num2str(LEB, '%.15g')]);
    disp(['U_E(B)    = ' num2str(UEB, '%.15g')]);
    disp(['cond_E(B) = ' num2str(condEB, '%.15g')]);
    disp(['D_E(B)    = ' num2str(DEB, '%.15g')]);
end

Q = [LEB, UEB, condEB, DEB];
end

function A = computeEvalMatrix(G, E, B)
numE = size(E, 1);
A = exp(2*pi*1i*E*(B./(ones(numE, 1)*G))');
end
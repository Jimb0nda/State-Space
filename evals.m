function L = evals(A)

syms s;
C = det(s*eye(size(A,1))-A);
L = solve(C == 0,s);

end


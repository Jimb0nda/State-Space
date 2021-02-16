function cp = ch_poly(A)

% get Characteristic Polynominal

syms s;
C = det(s*eye(size(A,1)) - A);
cp = sym2poly(C);


end


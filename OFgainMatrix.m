function k = OFgainMatrix(sys, poles)

A = sys.A;
B = sys.B;
syms s;
km = sym('k',[size(B,2) size(sys.C,1)]);
p = poly(poles);
cpoly = charpoly(A-B*km*sys.C);
soln = solve(cpoly == p, 'returnconditions', true);
k_til = inv(eye(size(km))- km * sys.D)*km;
k = subs(k_til, soln);

end
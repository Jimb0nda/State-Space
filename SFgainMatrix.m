function k = SFgainMatrix(sys_in, poles)
% Function to calculate the gain matrix

A = sys_in.A;
B = sys_in.B;
syms s;
K = sym('k',[size(B,2) size(sys_in.C,2)]);
p = poly(poles);
Acl = A - B*K;
cpoly = charpoly(Acl);
soln = solve(cpoly == p);
k = subs(K, soln);



end


function Gz = bilin_approx(G, T)

% Find the bilinear approximation to G using sample period T

syms z s;
[n,d] = tfdata(G, 'v');
n = poly2sym(n,s);
d = poly2sym(d,s);
Nz = subs(n/d, s, 2/T * (z-1)/(z+1));
[n,d] = numden(Nz);
Gz = tf(sym2poly(n), sym2poly(d), T);

end


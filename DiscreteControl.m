%exams
syms z;
syms k1 k2;
A = [2 2; 2 0];
B = [0; 1];
K = [k1 k2];

% So the closed loop gain matrix is :

Acl = A - B*K;

% And |zI - Acl|

I = eye(size(Acl));
C = z.*I - Acl;

% Print C 

G = det(C,'Algorithm','minor-expansion');

% Result of determinant
collect(G)

desiredG = (z - 0.4 - 0.4i)*(z - 0.4 + 0.4i);
collect(desiredG)

eqn1 = k2 - 2 == -4/5;
eqn2 = 2*k1 - 2*k2 - 4 == 8/25;

[A, B] = equationsToMatrix([eqn1, eqn2], [k1, k2]);

% This is the gain matrix
K = linsolve(A,B);
K = K';
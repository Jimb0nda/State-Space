function sys_out = ccf(sys_in)

%Convert the system in sys_in to canonical form
%Leave the result in sys_out

[A,B,C,D] = ssdata(canon(sys_in, 'companion'));
sys_out = ss(A.',C.',B.',D,sys_in.Ts);

end


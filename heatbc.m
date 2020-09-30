function [pl,ql,pr,qr] = heatbc(xl,ul,xr,ur,t)
global T_int T_ext h k
pl = ul - T_int;
ql = 0;
pr = h*(ur - T_ext);
qr = k;

% pl = h*(ul - T_ext);
% ql = k;
% pr =  ur - T_int;
% qr = 0;

end
function [pl,ql,pr,qr] = heatbc(xl,ul,xr,ur,t)
global T_int T_ext h lambda
pl = T_int;
ql = 0;
pr = h*(ur - T_ext);
qr = lambda;
end
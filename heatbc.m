function [pl,ql,pr,qr] = heatbc(xl,ul,xr,ur,t)
global T_int T_ext h k A Q_s Lf d_p rho_w
pl = ul - T_int;
ql = 0;
pr = h*(ur - T_ext) - (1 - A)*Q_s*max(sin((1/(12*3600))*t*pi),0) + rho_w*Lf*d_p;
qr = k;

% pl = h*(ul - T_ext);
% ql = k;
% pr =  ur - T_int;
% qr = 0;

end
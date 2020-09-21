function [c,f,s] = heatpde(x,t,u,dudx)
global rho c_p lambda;
c = rho*c_p;
f = lambda*dudx;
s = 0;
end
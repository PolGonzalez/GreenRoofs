clear all
global T_int T_ext h k c_p rho A Q_s Lf d_p rho_w
T_int = 20;
T_ext = 30;
h = 10;
k = 0.8; 
rho = 2400;
c_p = 880;
A = 0.55;
Q_s = 800;
Lf = 2.26e6;
d_p = 1e-7;
rho_w = 1e3;

L = 0.3;
x = linspace(0,L,40);
t = linspace(0,360000,2000);
m = 0;
sol = pdepe(m,@heatpde,@heatic,@heatbc,x,t);
surf(x,t,sol)
title('Numerical solution computed with 40*2000 mesh points')
xlabel('Distance x')
ylabel('Time t')
colormap hot
imagesc(x,t,sol)
colorbar
xlabel('Distance x','interpreter','latex')
ylabel('Time t','interpreter','latex')

Energy = trapz(rho*c_p*sol(end,:))





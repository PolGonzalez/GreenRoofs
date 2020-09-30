clear all


global T_int T_ext h k c_p rho
T_int = 20;
T_ext = 30;
h = 10;
k = 0.8; 
rho = 2400;
c_p = 880;

L = 1;
x = linspace(0,L,40);
t = linspace(0,360000,2000);
m = 0;
sol = pdepe(m,@heatpde,@heatic,@heatbc,x,t);
surf(x,t,sol)
title('Numerical solution computed with 20 mesh points')
xlabel('Distance x')
ylabel('Time t')
colormap hot
imagesc(x,t,sol)
colorbar
xlabel('Distance x','interpreter','latex')
ylabel('Time t','interpreter','latex')


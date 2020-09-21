clear all

global T_int T_ext h lambda c_p rho
T_int = 20;
T_ext = 30;
h = 0.1;
lambda = 1.75; 
rho = 2300;
c_p = 920;

L = 10;
x = linspace(0,L,20);
t = [linspace(0,0.05,20), linspace(0.5,5,10)];

m = 0;
sol = pdepe(m,@heatpde,@heatic,@heatbc,x,t);
colormap hot
imagesc(x,t,sol)
colorbar
xlabel('Distance x','interpreter','latex')
ylabel('Time t','interpreter','latex')
title('Heat Equation for $0 \le x \le 1$ and $0 \le t \le 5$','interpreter','latex')
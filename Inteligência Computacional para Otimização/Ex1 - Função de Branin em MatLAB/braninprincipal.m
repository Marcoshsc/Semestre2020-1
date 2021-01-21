x = [-1.5:0.125:1.5];
y = [-.6:0.125:2.8];
[X, Y] = meshgrid(x, y);
Z = (Y - (5.1/(4*pi^2))*(X.^2) + (5/pi)*X - 6).^2 + (10*(1-(1/(8*pi)))*cos(X))+10;
mesh(X, Y, Z)
hidden off
xlabel('x(1)'), ylabel('x(2)')
title('Branin Function')
hold on
plot3(-pi, 12.275, branin([-pi, 12.275]), 'k.', 'markersize', 20)
plot3(pi, 2.275, branin([pi, 2.275]), 'k.', 'markersize', 20)
plot3(9.42478, 2.475, branin([9.42478, 2.475]), 'k.', 'markersize', 20)


format short
[xmin, fxmin, conv, saida] = fminsearch('branin', [-5, 10])
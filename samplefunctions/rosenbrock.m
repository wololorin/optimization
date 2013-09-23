function [f, g] = rosenbrock(x)
y = x(2);
x = x(1);
if(nargin < 1)
    f = @(x, y)(100*(x.^2-y).^2+(x-1).^2);
    ezsurf(f);
else
f       = 100*(x.^2-y).^2+(x-1).^2;
g(1)    = 2*(200*x*(x^2 - y) + x -1);
g(2)    = -200*(x^2 -y);
end



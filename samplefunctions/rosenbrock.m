function f = rosenbrock(x, y)
if(nargin < 2)
    f = @(x, y)(100*(x.^2-y).^2+(x-1).^2);
    ezsurf(f);
else
f       = 100*(x.^2-y).^2+(x-1).^2;
g(1)    = 2*(200*x*(x^2 - y) + x -1);
g(2)    = -200*(x^2 -y);
end



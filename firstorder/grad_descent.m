function x_opt = grad_descent(f, x0, opts)
%
% Simple implementation of gradient descent
%
% Author: Varun Ramakrishna.

if(nargin < 1)
    test_grad_descent;
elseif(nargin < 3)
    opts.tol = 1e-6;
end

x     = x0;
xprev = x0;
err   = inf;

while err > opts.tol 
    
    
    % Compute gradient
    [~, g] = f(x(1), x(2));
    
    fls = @(t)(f(x(1)- t*g(1), x(2) - t*g(2)));
    
    % Line search
    t = fminbnd(fls, 0, 1e1);
    
    % Update
    x = x - t*g';
    
    % Change in x
    err     = norm(x - xprev);
    xprev   = x;
    disp(x)
    
end
x_opt = x;

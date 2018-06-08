function [x,k] = Homeier(a,x0,tol,max)
% Homeier's Method
%   Homeier's method for finding successively better approximations to the 
%   zeroes of a real-valued function.
%
% Input:
%   f - input funtion
%   x0 - inicial aproximation
%   tol - tolerance
%   max - maximum number of iterations
%
% Output:
%   x - aproximation to root
%   k - number of iterations
%
% Example:
%	[ x, ex ] = newton( 'exp(x)+x', 0, 0.5*10^-5, 10 )
dy=tol+1;
k=0;
xn=x0;
while abs(dy)> tol && k<= max
    [w,dw]=Cheby(a,xn);
    if dw==0
        disp('Division by 0');
        return;
    end
    dy=w/dw;
    yn=xn-dy;
    [~,dwy]=Cheby(a, yn);
    if dwy==0
        disp('Division by 0');
        return;
    end
    x=xn-1/2*w*(1/dw+1/dwy);
    k=k+1;
    xn=x;
end
end
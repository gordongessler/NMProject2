function [p,p2] = Cheby(a,x)
% Value of Polynomial Using Chebyshev Polynomials
%   Produces a value of the polynomial of form p(x)=c0*U0(x)+c1*U1(x)+...+c*nU*n(x),
%   where Uk is Chebyshev polynomial of the second kind
%
% Input:
%   a - vector of cooefictients
%   x - the x value for which the value of polynomial is calcualted
%
% Output:
%   p - value of the polynomial
%   p2 - value of the derivative of the polynomial
n=length(a)-1;
u=zeros(1,n);
u(1)=2*x;
u(2)=4*x^2-1;
for i=3:n
    u(i)=2*x*u(i-1)-u(i-2);
end
p=a(1);
for i=2:n+1
    p=p+a(i)*u(i-1);
end

%derivative
n=length(u);
w=zeros(1,n);
w(1)=2;
w(2)=8*x;
for i=3:n
    w(i)=2*x*w(i-1)-w(i-2)+2*u(i-1);
end
p2=0;
for i=2:n+1
    p2=p2+a(i)*w(i-1);
end
end
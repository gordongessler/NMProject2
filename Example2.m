%32*x^3 + 12*x^2 - 12*x - 2
x=linspace(-1,1);
p=[1,2,3,4];
for i = 1:100
    t=x(i);
    [y(i),~]=Cheby(p,t);
end
plot(x,y);
hold on;
hline = refline(0);
hline.Color = 'r';
axis([-1 1 -4 4])
%axis('normal')
xlabel(' x ')
ylabel(' y ')
hold off;
[x0,k]=Homeier(p,0.2,0.01,100)
diff=polyval(f,x0)
print -deps ex2

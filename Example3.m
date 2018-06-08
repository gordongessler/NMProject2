%32*x^3 + 12*x^2 - 12*x - 2
x=linspace(-1,1);
p=[25,43,64];
for i = 1:100
    t=x(i);
    [y(i),~]=Cheby(p,t);
end
plot(x,y);
hold on;
hline = refline(0);
hline.Color = 'r';
axis([-1 1 -50 20])
%axis('normal')
xlabel(' x ')
ylabel(' y ')
hold off;
[x0,k]=Homeier(p,0,0.001,100)
diff=Cheby(p,x0)
print -deps ex3

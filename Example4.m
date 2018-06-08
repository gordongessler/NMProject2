%- 32*x^5 - 80*x^4 + 64*x^3 + 48*x^2 - 18*x - 3
x=linspace(-3,2.5);
p=[-1,2,-3,4,-5,6-7];
for i = 1:100
    t=x(i);
    [y(i),~]=Cheby(p,t);
end
plot(x,y);
hold on;
hline = refline(0);
hline.Color = 'r';
axis([-3 2.5 -700 400])
%axis('normal')
xlabel(' x ')
ylabel(' y ')
hold off;
[x0,k]=Homeier(p,10,0.0001,100)
diff=polyval(f,x0)
print -deps ex4

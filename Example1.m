%16*x^4 + 8*x^3 - 8*x^2 - 2*x + 1
x=linspace(-1,1);
p=[0,0,0,1];
for i = 1:100
    t=x(i);
    [y(i),~]=Cheby(p,t);
end
plot(x,y);
%plot(t,subs(fr,x,t));
hold on;
hline = refline(0);
hline.Color = 'r';
axis([-1 1 -2.5 2.5])
%axis('normal')
xlabel(' x ')
ylabel(' y ')
hold off;
[x0,k]=Homeier(p,1,0.0001,100)
diff=Cheby(p,x0)
print -deps ex1
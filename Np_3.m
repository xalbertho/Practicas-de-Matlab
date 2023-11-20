
x=[-pi:.1:pi];
y=sin(x);
plot(x,y,'--g');
hold on 
t=cos(x).^2+sin(x);
plot(x,t,'*r')
z=sin(x).*cos(x)+sqrt(abs(x))
plot(x,z,'-b')
fplot(@(x)tan(x),[-pi pi])

 fplot(@(x)x.*cos(x),[-pi pi], '-b')

 fplot(@(x)cos(x).^2+sin(x),[-pi pi],'--g')
 %fplot(@(x)x.^3-40*x^2+100*x+5,[-5 5],'*r')
 %% 
%Graficas en doble escala
x=0:.1:5;
y1=200*exp(-.05*x).*sin(x);
y2=0.8*exp(-.05*x).*sin(10*x);

figure %% nueva figura 
plotyy(x,y1,x,y2);



 %% polar grafic
theta=0:.1:pi;
rho=sin(2*theta).*cos(2*theta);
 
 polar(theta,rho,'--r')
  




%%

%%

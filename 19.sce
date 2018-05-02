exec('price1.sci')
exec('put.sci')
r=0.04
K=100
s=100
sigma=0.2
T=1
N=[1:100]*10
p=zeros(100,1)
//Nous allons générer des vecteurs pour avoir les differentes valeurs de p1
for i=[1:100]
    rN(i)=(r*T)/N(i); 
    hN(i)=((1+rN(i))*exp(sigma*sqrt(T/N(i))))-1;
    bN(i)=((1+rN(i))*exp((-sigma)*sqrt(T/N(i))))-1;
    p1(i)=price1(N(i),rN(i),hN(i),bN(i),s,g);
end
for i=[1:100]
    p(i)=put(s,rN(i),sigma,T,K)
end

plot(N,p1)
plot(N,p)

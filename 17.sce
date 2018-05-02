exec('C:\Users\USER-PC\Desktop\proj\math\ala_ghassen\price3.sci')
exec('C:\Users\USER-PC\Desktop\proj\math\ala_ghassen\put.sci')
exec('C:\Users\USER-PC\Desktop\proj\math\ala_ghassen\price1.sci')
r=0.04
sigma=0.1
s=100
T=1
K=100
x=[1:10]*(10**5)
p4=zeros(10,1)
for i=[1:10]
    p4(i)=put(s,r,sigma,T,K)
end
p3=zeros(10,1)
for i=[1:10]
    p3(i)=price3(i*(10**5),s,r,sig,T,f)
end
plot(x,p3)
plot(x,p4)

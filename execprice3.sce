exec('C:\Users\USER-PC\Desktop\proj\math\ala_ghassen\price3.sci')
s=100
r=0.03
sig=0.1
T=1

x=[1:10]*(10**5)

p3=zeros(10,1)
for i=[1:10]
p3(i)=price3(i*(10**5),s,r,sig,T,f)
end


plot(x,p3)

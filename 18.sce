exec('put.sci')
r=0.03
sigma=0.1
K=100
s=[1:10]*20
t=[1/12,1/6,1/4,1/3,1/2,1]
p=zeros(10,6)
for i=[1:10]
    for j=[1:6]
        p(i,j)=put(s(i),r,sigma,T,K)
    end
end
plot3d(s,t,p)

function max1=f(x)
max1=max(95-x,0)
endfunction

function p= price2(N,Rn,Hn,Bn,s,f)
    vk=[]
    vN=[]
    si=[]
    q=(Rn-Bn)/(Hn-Bn)
for i=[1:N+1]
        s(i)=f(s*((1+Hn)^i)*((1+Bn)^(N-i)))
        end
    for k=[1:N+1]
        vN(k)=f(k)
        end
    i=1
    while(len(vN)~=1)
        for j=[0:(N-i)]
            vk(j)=(1/(1+Rn))*(q*vN(j+1)+(1-q)*vN(j))
            end
        vN=vk
        vk=zeros(N+1,1)
        i=i+1
        end
    p=vN(0)
    endfunction

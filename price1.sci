function b=fact(n)
if n<=1 then //si n=0 ou 1 alors n!=1
b=1
else //si n>1 alors n!=n*(n-1)!
b=n*fact(n-1)
end
endfunction

function max1=f(x)
    max1=max(100-x,0)
endfunction
function p=price1(N, Rn, Hn, Bn, s,f,fact)
    g=0
    q=(Rn-Bn)/(Hn-Bn)
    for i =[0,N]
        g=g+(fact(N)/(fact(i)*fact(N-i)))*(q^i)*((1-q)^(N-i))*f(s*((1+Hn)^i)*((1+Bn)^(N-i)))
    end
    p= g/((1+Rn)^N)
endfunction


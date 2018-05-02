function max1=f(x)
    max1=max(100-x,0)
endfunction


function p=price3(n,s,r,sigma,T,f)
    p=0
    x=rand(n,1)
    img=rand(x,"normal")
    for i=[1:n]
        p=p+(exp(-r*T)*f(s*exp((r-(sigma**2/2))*T+(sigma*sqrt(T)*img(i)))))
        end
    p=p/n
endfunction


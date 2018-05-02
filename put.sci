function p= put(s,r,sigma,T,K)
d=(log(s/K)+(r+(sigma^2)/2)*T)/(sigma*sqrt(T))
[v1,Q]=cdfnor("PQ",-d,0,1)
[v2,Q]=cdfnor("PQ",-d+sigma*sqrt(T),0,1) 
p=-s*v1+K*exp(-r*T)*v2
endfunction

function A=remplir1(M,r,sig,Dt)
for i=1:M 
for j=1:M 
if i==j then A(i,j)=-r*i+(((sig*i)^2)/2)
	elseif j == i-1 then A(i,j)=(-r+1/Dt+r*i-(sig*i)^2)
	elseif j == i+1 then A(i,j)=(sig*i)^2
	else  A(i,j)=0
end
end 
end 
endfunction
function B=remplir2(K,L,M)   
    for i=1:M 
        B(i)=max(K-i*(L/(M+1)),0)
    end
endfunction

function C=remplir3(r,T,M,sig,n,N,K)
    C=zeros(M,1); 
    C(1,1)=(-r+((sig^2)/2))*K*(exp(r*(n*T/N-T)));
endfunction

function Pn=final(r,T,M,sig,N,Dt,K,L)
    A=remplir1(M,r,sig,Dt);
    Pn=remplir2(K,L,M);
    for n=N:-1:1
       C=remplir3(r,T,M,sig,n,N,K);
       Pn=A*Pn+C;
    end
endfunction


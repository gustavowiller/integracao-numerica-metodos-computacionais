function soma = regraSimpson(a,b,n)
	f = inline('x.^2');	
	if(mod(n,3))
		n = 3*((n/3)+1);	
	end

	delta = (b-a)/n;
	
	soma = 0;
	xi = a;
	xi_1 = a + delta;
	xi_2 = a + 2*delta;
	
	for i = 0:3:n-1	
		
		[xi xi_1 xi_2]
		soma = soma + (f(xi)+4*f(xi_1) +f(xi_2))*(delta/3);
	
		xi = xi + 3*delta;
		xi_1 = xi_1 + 3*delta;
		xi_2 = xi_2 + 3*delta;
	end


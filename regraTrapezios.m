function soma = regraTrapezios(a,b,n)
	f = inline('x.^2');
	delta = (b-a)/n;
	x = a;
	soma = 0; 

	for i = 0:n-1
		soma = soma + (f(x)+f(x+delta))*delta/2;

		x = x+delta;
		hold on
		
		line([x-delta x-delta x x x-delta],[f(x-delta) 0 0 f(x) f(x-delta)],'color','black');
		
		hold on
	end

	xplot = [a:.1:b];
	plot(xplot,f(xplot));

	disp('Real: ');
	disp(((b-a)^3)/3);

	disp('Aproximado:');
	disp(soma);



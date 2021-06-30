n=40; p=rand(1,n)+1i*rand(1,n); s=1e-15*init_s(p)*exp(-1i*2*pi*rand()); M=5;

tic
[r1,err]=JenkinTraub(p,s);
toc
err1=[norm(eval_poly(p,s))*ones(1,n),err];
loglog(err1);
hold on
tic
[r2,err2]=NewtonRaphson(p,s);
toc
loglog(err2);
legend("JenkinTraub", "NewtonRaphson");
norm(r1-r2)<1e-5
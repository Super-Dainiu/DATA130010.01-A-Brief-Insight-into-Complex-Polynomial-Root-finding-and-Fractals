Z=-2:0.01:2; eps=1e-5; [Re,Im]=meshgrid(Z); Z=Re+Im*1j; [a,b]=size(Z);

n=12; p=rand(1,n)+1i*rand(1,n); r=roots(p); JT=zeros(a,b); NR=Z;

%% plot for JenkinTraub
for i=1:a
    for j=1:b
        JT(i,j)=JenkinTraub(p, Z(i,j));
    end
end
JJT=0;
for i=1:numel(r)
    JJT=JJT+i*(abs(JT-r(i))<eps);
end
subplot(1,2,1)
imagesc(JJT);
colormap("jet");
colorbar
axis equal
axis off

%% plot for NewtonRaphson
for n=1:50
    NR=NR-eval_poly(p,NR)./eval_dpoly(p,NR);
end
JNR=0;
for i=1:numel(r)
    JNR=JNR+i*(abs(NR-r(i))<eps);
end
subplot(1,2,2)
imagesc(JNR);
colormap("jet");
colorbar
axis equal
axis off

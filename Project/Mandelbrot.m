Z=0.5;
N=-2:0.005:2;
[Re,Im]=meshgrid(N);
C=Re+Im*1j;
J=0;
for n=1:30
    Z=Z.^2+C;
    t=abs(Z) .* abs(Z)<=2;
    J=J+1/(n+1)*exp(-t.^2);
end
imagesc(J);
colormap("cool");
axis equal
axis off
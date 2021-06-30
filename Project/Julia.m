filename = 'Julia.gif'; h=figure;
%% C -2:2

% for C=-2:0.05:2
%     N=-2:0.005:2;
%     [Re,Im]=meshgrid(N);
%     Z=Re+Im*1j;
%     J=0;
%     for n=1:30
%         t=abs(Z) .* abs(Z)<=2;
%         J=J+1/(n+1)*exp(-t.^2);
%         Z=Z.^2+C;
%     end
%     imagesc(J);
%     colormap("cool");
%     axis equal
%     axis off
%     pause(0.0001)
% end

%% C spinning
k=0;
for A=[0:0.2:1, 1:-0.2:0]
    for B=[0:0.05:2,2:-0.05:0]
        C=A*exp(-1i*B*pi);
        N=-2:0.005:2;
        [Re,Im]=meshgrid(N);
        Z=Re+Im*1j;
        J=0;
        for n=1:30
            t=abs(Z) .* abs(Z)<=2;
            J=J+1/(n+1)*exp(-t.^2);
            Z=Z.^2+C;
        end
        imagesc(J);
        colormap("hot");
        axis equal
        axis off
        % Capture the plot as an image 
        frame = getframe(h); 
        im = frame2im(frame); 
        [imind,cm] = rgb2ind(im,256); 
        k=k+1;
        % Write to the GIF File 
        if k==1
          imwrite(imind,cm,filename,'gif', 'Loopcount',inf,'DelayTime',0.05); 
        else 
          imwrite(imind,cm,filename,'gif','WriteMode','append','DelayTime',0.05); 
        end
    end
end

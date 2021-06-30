function s=init_s(p)
    p=abs(p); p(end)=-p(end);
    s=NewtonRaphson(p,1);
end
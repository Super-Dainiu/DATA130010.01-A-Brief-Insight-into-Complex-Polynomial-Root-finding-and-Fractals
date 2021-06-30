function f=eval_poly(p,x)
    f=0;
    for i=1:numel(p)
        f=f.*x+p(i);
    end
end
function df=eval_dpoly(p,x)
    df=0;
    for i=1:numel(p)-1
        df=df.*x+p(i)*(numel(p)+1-i);
    end
end
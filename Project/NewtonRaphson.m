function [s,err]=NewtonRaphson(p,s)
    eps=1e-15; err=[norm(eval_poly(p,s))]; iter=0;
    while norm(eval_poly(p,s))>eps
        s=s-eval_poly(p,s)./eval_dpoly(p,s);
        err(end+1)=norm(eval_poly(p,s));
        iter=iter+1;
        if iter>1e3
            break
        end
    end
end
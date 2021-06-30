function [s,err]=JenkinTraub_phase3(P, H, s, eps)
    HH=H; err=[norm(eval_poly(P,s))];
    while norm(eval_poly(P,s))>eps
        if isnan(s-eval_poly(P,s)/eval_poly(poly_normal(H),s))
            break
        end
        s=s-eval_poly(P,s)/eval_poly(poly_normal(H),s); err(end+1)=norm(eval_poly(P,s));
        H=poly_div(poly_sub(HH,eval_poly(HH,s)/eval_poly(P,s)*P),[1,-s]);
        HH=H;
    end
end
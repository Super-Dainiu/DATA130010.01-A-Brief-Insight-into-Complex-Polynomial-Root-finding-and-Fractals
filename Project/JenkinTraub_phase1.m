function H=JenkinTraub_phase1(P, M)    
    H=dpoly(P); HH=H;
    for i=2:M
        H=poly_div(poly_sub(HH,eval_poly(HH,0)/eval_poly(P,0)*P),[1,0]);
        HH=H;
    end
end

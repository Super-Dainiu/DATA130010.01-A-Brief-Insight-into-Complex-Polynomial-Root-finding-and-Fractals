function H=JenkinTraub_phase2(P, s, M, L, H)
    HH=H;
    for i=M+1:L
        H=poly_div(poly_sub(HH,eval_poly(HH,s)/eval_poly(P,s)*P),[1,-s]);
        HH=H;
    end
function [r,error]=JenkinTraub(p, s)
    eps=1e-15;
    P=poly_normal(p); 
    L=numel(P)-1; % deg(P)=L, we will have L distinct roots.
    % phase 1 No-shift
    M=5; % M=5 is empirically good for polynomials with degree < 50
    H=JenkinTraub_phase1(P,M);

    % phase 2 Fixed-shift
    H=JenkinTraub_phase2(P, s, M, L, H);

    % phase 3 Variable-shift
    [r,error]=JenkinTraub_phase3(P, H, s, eps);
end
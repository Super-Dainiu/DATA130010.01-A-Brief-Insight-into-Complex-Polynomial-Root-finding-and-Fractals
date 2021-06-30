function p=dpoly(p)
    k=(numel(p)-1):-1:1;
    p=p(1:end-1).*k;
end
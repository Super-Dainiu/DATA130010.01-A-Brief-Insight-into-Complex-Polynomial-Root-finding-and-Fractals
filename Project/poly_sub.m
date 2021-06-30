function r=poly_sub(p,q)
    if numel(p)<numel(q)
        p=[zeros(1,numel(q)-numel(p)), p];
        r=p-q;
    else
        q=[zeros(1,numel(p)-numel(q)), q];
        r=p-q;
    end
end
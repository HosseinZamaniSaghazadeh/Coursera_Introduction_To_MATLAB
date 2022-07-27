function [summa, index] = max_sum(v,n)
w=zeros(1,size(v,2)+1-n);
if n > size(v,2)
    summa = 0;
    index = -1;
else
    for ii = 1:(size(v,2)+1-n)
        b=0;
        for jj = ii:(ii+n-1)
           b = b + v(1,jj);
        end
        w(1,ii)=b;
    end
    summa = max(max(w));
    idx = find(w==summa);
    index = idx(1,1);
end

end
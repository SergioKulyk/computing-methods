function d = determinant(a) 
       [n, ~] = size(a);
       s = 0;
    for k = 1: n-1
        p = findMax(a, k);
        if p ~= k
            tmp = a(k, :);
            a(k, :) = a(p,:);
            a(p, :) = tmp;
            s = s + 1;
        end
        for i = k + 1 : n
            tmp = a(i, k) / a(k, k);
            for j = k : n
                a(i,j) = a(i, j) - tmp * a(k, j);
            end
        end
    end
        
     d = 1;
     for i = 1 : n
         d = d * a(i, i);
     end
     d = d * (-1)^s; 
    end
    
    
    
   
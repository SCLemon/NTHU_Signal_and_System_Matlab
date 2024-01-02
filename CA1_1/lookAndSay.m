function sum = cal(n)
    P = [1];
    S = 0;
    
    % calculate
    for i = 1:n-1
        next=[];
        count = 1;
        for j = 1:length(P)
            if j + 1 <= length(P) && P(j) == P(j + 1)
                count = count + 1;
            else
                next = [next, count, P(j)];
                count = 1;
            end
        end
    
        S = 0;
        for k = 1:length(next)
                S = S + double(next(k));
        end
    
        P = next;
    end
    
    fprintf('S_%d = %d\n', n, S)
end
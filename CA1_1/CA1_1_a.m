% Author : ESS 110011173 林英豪
% Start by creating an array called "next" to store the sequence and a variable called "count" set to 1. This count will help keep track of repeated digits.
% Within the loop check if the current element is identical, to the one.
% If the current digit is not the same as the one or if its the element in the array add both the count and digit to the "next" array.
% Once you finish iterating through the sequence update the sum "S" for that sequence.
% Lastly update the sequence "P" with the sequence, for future iterations.

n = 40; % target
P = [1];
S = 0;

% The main loop begins
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

fprintf('S_%d = %d\n', n, S);
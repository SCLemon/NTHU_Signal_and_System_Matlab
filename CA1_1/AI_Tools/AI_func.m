function lookAndSaySeq()
    % Function to generate the next term in the "look and say" sequence
    function nextTerm = lookAndSay(previousTerm)
        nextTerm = '';
        i = 1;

        while i <= length(previousTerm)
            count = 1;
            while (i + 1 <= length(previousTerm)) && (previousTerm(i) == previousTerm(i+1))
                count = count + 1;
                i = i + 1;
            end
            nextTerm = [nextTerm, num2str(count), previousTerm(i)];
            i = i + 1;
        end
    end

    % Initialize the sequence with the first term
    sequence = '1';

    % Generate the "look and say" sequence up to the 40th term
    for n = 1:40
        sequence = lookAndSay(sequence);
        if n == 20
            S20 = sum(double(sequence) - 48); % Calculate the sum of digits for the 20th term
        end
        if n == 40
            S40 = sum(double(sequence) - 48); % Calculate the sum of digits for the 40th term
        end
    end

    disp(['S20 = ' num2str(S20)]);
    disp(['S40 = ' num2str(S40)]);
end

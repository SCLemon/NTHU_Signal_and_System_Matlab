function y = my_conv(x,h)

N = length(x)+length(h)-1;
y = zeros(1,N);

for n = 1:N
    for k = 1:length(h)
        if (n-k+1 > 0) && (n-k+1 <= length(x))
            y(n) = y(n) + x(n-k+1)*h(k);
        end
    end
end

end
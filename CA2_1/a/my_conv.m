function y = cal(x,h)
m=length(x);
n=length(h);
v1=[x,zeros(1,n)];
v2=[h,zeros(1,m)];
for i=1:n+m-1
    y(i)=0;
    for j=1:m
        if(i-j+1>0)
            y(i)=y(i)+v1(j)*v2(i-j+1);
        else
        end
    end
end
end


L = zeros(20,20);
B = zeros(20,1);
for i = 1:20
    for j = 1:20
        if i>=j
            L(i,j) = i+j;
        else 
            L(i,j) = 0;
        end
    end
end
for k = 1:20
    B(k) = k
end
forsub(L,B)

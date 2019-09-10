# question no : 509

# @param {Integer} n
# @return {Integer}
def fib(n)
    f0 = 0
    return f0 if n==0
    f1 = 1
    return f1 if n==1
    i = 2
    while(i< n+1)
        f2 = f0+f1
        f0 = f1
        f1 = f2
        i=i+1
    end
    return f2
end

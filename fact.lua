-- defines a factorial function
function fact(n)
    if n == 0 then
        return 1
    else
        return n * fact(n - 1)
    end
end

print("Enter a number:")
a = io.read("*n") -- reads a number
if not (a < 0) then
    print(fact(a))
end

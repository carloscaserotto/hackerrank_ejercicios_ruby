# Enter your code here. Read input from STDIN. Print output to STDOUT
t = gets.to_i
stdin = $stdin.read
s = stdin.split("\n")
s=s.each.map(&:to_i)


def is_prime(n)
    # test if n is even
    return false if n == 1
    return true if n == 2
    return false if n % 2 == 0
    # test each odd number from 3 to sqrt(n)
    i=3
    sqr_root = Math.sqrt(n).floor
    #puts sqr_root
    while i <= sqr_root
        if n % i == 0
            return false
        end
        i =i+2
    end
    # n is necessarily prime
    return true
end

s.each do |n|
    if is_prime(n)
        puts "Prime"
    else
        puts "Not prime"
    end
end





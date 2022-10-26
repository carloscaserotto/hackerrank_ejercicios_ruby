#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'bitwiseAnd' function below.
#
# The function is expected to return an INTEGER.
# The function accepts following parameters:
#  1. INTEGER N
#  2. INTEGER K
#

def bitwiseAnd(n, k)
    # Write your code here
    #p "k:#{k}"
    s = []
    result = 0
    i=0 
    #j=0
    n.times do |i|
        i = i+1
        s.push(i.to_s(2))
    end
    #p s
    #p s.length
    max = 0
    largest_possible = k - 1
    #p largest_possible
    max_reached = false
    l = s.length-1
    m=0
    while 0 <= l do
        m=l-1
        while 0 <=m do
            #p "#{s[l]}-#{s[k]}"
            result = s[l].to_i(2) & s[m].to_i(2)
            #p result
            if result < k && result > max
                max = result
                #p max
                #p k
                if max == largest_possible 
                    max_reached = true
                    break
                end    
            end
            m-=1
        end
        if max_reached
            break
        end
        l -=1
    end
    p max
    return max   

end

fptr = File.open("nota.txt", 'w')

t = gets.strip.to_i

t.times do |t_itr|
    first_multiple_input = gets.rstrip.split

    count = first_multiple_input[0].to_i

    lim = first_multiple_input[1].to_i

    res = bitwiseAnd count, lim

    fptr.write res
    fptr.write "\n"
end

fptr.close()
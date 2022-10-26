#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'lonelyinteger' function below.
#
# The function is expected to return an INTEGER.
# The function accepts INTEGER_ARRAY a as parameter.
#

def lonelyinteger(a)
    # Write your code here
    e = 0
    a.select.with_index { |element, idx| 
    #puts "#{element}--#{idx}"
    #puts "#{element}--#{idx} --- #{a.count(element)} "
    if(a.count(element) == 1)
      e = element
    end
    }
    return e
end

fptr = File.open("nota.txt", 'w')

n = gets.strip.to_i

a = gets.rstrip.split.map(&:to_i)

result = lonelyinteger a

fptr.write result
fptr.write "\n"

fptr.close()

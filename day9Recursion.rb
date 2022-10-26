#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'factorial' function below.
#
# The function is expected to return an INTEGER.
# The function accepts INTEGER n as parameter.
#

def factorial(n)
    # Write your code here
    if n <= 1
        return 1
    else
        n*factorial(n-1)
    end

end

fptr = File.open("nota.txt", 'w')

n = gets.strip.to_i

result = factorial n
puts result

fptr.write result
fptr.write "\n"

fptr.close()

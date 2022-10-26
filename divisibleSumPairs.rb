#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'divisibleSumPairs' function below.
#
# The function is expected to return an INTEGER.
# The function accepts following parameters:
#  1. INTEGER n
#  2. INTEGER k
#  3. INTEGER_ARRAY ar
#

def divisibleSumPairs(n, k, ar)
    # Write your code here
    result = 0
    ar[0...ar.length].each_with_index do |e, i|
      ar[i+1...ar.length].each_with_index do |j|
      result += 1 if (e + j) % k == 0
      end
    end
    return result
end

fptr = File.open("nota.txt", 'w')

first_multiple_input = gets.rstrip.split

n = first_multiple_input[0].to_i
k = first_multiple_input[1].to_i
ar = gets.rstrip.split.map(&:to_i)

result = divisibleSumPairs n, k, ar
puts result

fptr.write result
fptr.write "\n"

fptr.close()

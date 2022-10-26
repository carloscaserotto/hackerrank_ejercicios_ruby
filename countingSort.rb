#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'countingSort' function below.
#
# The function is expected to return an INTEGER_ARRAY.
# The function accepts INTEGER_ARRAY arr as parameter.
#
#array = [4,2,2,8,3,3,1]

def countingSort(array)  
  n = 100
  count = Array.new(n,0)
  array.each do |i|
    count[i] = array.count(i)
  end
  puts count.join(" ")
  #puts count.length
  return count
end

fptr = File.open("nota.txt", 'w')

n = gets.strip.to_i

arr = gets.rstrip.split.map(&:to_i)

result = countingSort arr

fptr.write result.join " "
fptr.write "\n"

fptr.close()






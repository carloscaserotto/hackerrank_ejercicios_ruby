#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'countingValleys' function below.
#
# The function is expected to return an INTEGER.
# The function accepts following parameters:
#  1. INTEGER steps
#  2. STRING path
#

def countingValleys(steps, path)
    # Write your code here
    paths = path.chars()
    sea = 0
    valley = 0
    #puts paths.class
    paths.each do |step|
      if step == "U"
        sea +=1
        #puts step
        #puts sea
        #if sea == 0
        #  valley += 1
        #end
      end
      if step == "D"
        sea -= 1
        #puts step
        #puts sea
        if sea == 0
          valley += 1
        end
      end
    end
    #puts sea
    puts valley

end

fptr = File.open("nota.txt", 'w')

steps = gets.strip.to_i

path = gets.chomp
#steps = 8
#path = "DDUUUUDD".chomp

result = countingValleys steps, path

fptr.write result
fptr.write "\n"

fptr.close()

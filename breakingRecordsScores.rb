#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'breakingRecords' function below.
#
# The function is expected to return an INTEGER_ARRAY.
# The function accepts INTEGER_ARRAY scores as parameter.
#

def breakingRecords(scores)
    # Write your code here
    minScore = scores[0]
    maxScore = scores[0]
    countMin = 0
    countMax = 0
    for score in scores
        if score < minScore 
            minScore = score
            countMin += 1
        end
        if score > maxScore 
            maxScore = score
            countMax += 1
        end
    end
    count = [countMax.to_i, countMin.to_i]
    print print countMax.to_i, " ", countMin.to_i
    return count

end

fptr = File.open("C:\Users\carlos\Desktop\Preparacion\file.txt", 'w')

n = gets.strip.to_i

scores = gets.rstrip.split.map(&:to_i)

result = breakingRecords scores

fptr.write result.join " "
fptr.write "\n"

fptr.close()

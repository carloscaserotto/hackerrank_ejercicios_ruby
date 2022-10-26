#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'matchingStrings' function below.
#
# The function is expected to return an INTEGER_ARRAY.
# The function accepts following parameters:
#  1. STRING_ARRAY strings
#  2. STRING_ARRAY queries
#

def matchingStrings(strings, queries)
    # Write your code here
    sum =0
    res = []
    queries.each_with_index { |s,i|
      strings.each {|q|
        #puts "indice #{i} string: #{s} - queries: #{q}"
        if s == q
          sum += 1
        end
        res[i] = sum
      }
      sum = 0
    }
    return res

end

fptr = File.open("nota.txt", 'w')

strings_count = gets.strip.to_i
strings = Array.new(strings_count)

strings_count.times do |i|
    strings_item = gets.chomp
    strings[i] = strings_item
end

queries_count = gets.strip.to_i
queries = Array.new(queries_count)

queries_count.times do |i|
    queries_item = gets.chomp
    queries[i] = queries_item
end

#strings = ["ab","ab","abc"]
#queries = ["ab","abc", "bc"]
puts "string: #{strings}"
puts "queries: #{queries}"

res = matchingStrings strings, queries

fptr.write res.join "\n"
fptr.write "\n"

fptr.close()

#!/bin/ruby

require 'json'
require 'stringio'
#
# Complete the 'flippingMatrix' function below.
#
# The function is expected to return an INTEGER.
# The function accepts 2D_INTEGER_ARRAY matrix as parameter.
#
def flippingMatrix(matrix)
    total = []   
    (0...(matrix.length/2)).each do |idx1|
        (0...(matrix.length/2)).each do |idx2|
            total << [matrix[idx1][idx2], 
            matrix[(matrix.length - 1)-idx1][idx2], 
            matrix[idx1][(matrix.length - 1)-idx2], 
            matrix[(matrix.length - 1)-idx1][(matrix.length - 1)-idx2]].max
        end 
    end
    puts total.sum
end


fptr = File.open("nota.txt", 'w')

q = gets.strip.to_i

q.times do |q_itr|
    n = gets.strip.to_i

    matrix = Array.new(2 * n)

    (2 * n).times do |i|
        matrix[i] = gets.rstrip.split.map(&:to_i)
    end

    result = flippingMatrix matrix

    fptr.write result
    fptr.write "\n"
end

fptr.close()

=begin
matrix = [  [112,42,83,119],
            [56,125,56,49],
            [15,78,101,43],
            [62,98,114,108]]
#puts matrix.length
idx1=0
idx2=0  
result = [matrix[idx1][idx2],matrix[(matrix.length - 1)-idx1][idx2], 
          matrix[idx1][(matrix.length - 1)-idx2],
          matrix[(matrix.length - 1)-idx1][(matrix.length - 1)-idx2]].max
#puts result
result = [matrix[0][0],matrix[3][0],matrix[0][3],matrix[3][3]]
puts result
result = [matrix[0][0],matrix[3][0],matrix[0][3],matrix[3][3]].max
puts result
result = [matrix[0][1],matrix[3][1],matrix[0][2],matrix[3][2]]  
puts result
result = [matrix[0][1],matrix[3][1],matrix[0][2],matrix[3][2]].max
puts result
=end
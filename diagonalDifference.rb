#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'diagonalDifference' function below.
#
# The function is expected to return an INTEGER.
# The function accepts 2D_INTEGER_ARRAY arr as parameter.
#

def diagonalDifference(arr)
    # Write your code here
    n = arr.length
    result = 0
    #puts sumDiagonal(n,arr)
    #puts sumDiagonalInvertida(n,arr) 
    result = (sumDiagonal(n,arr) - sumDiagonalInvertida(n,arr)).abs
    puts result
    return result
end

fptr = File.open("nota.txt", 'w')

n = gets.strip.to_i

arr = Array.new(n)

n.times do |i|
    arr[i] = gets.rstrip.split.map(&:to_i)
end

def sumDiagonal(n,arr)
  i=0
  sumaDiagonal = 0
  for i in 0...n
    sumaDiagonal = sumaDiagonal + arr[i][i]
    #puts "#{i} ---#{i}"
  end
  #puts sumaDiagonal
  return sumaDiagonal
end

def sumDiagonalInvertida(n,arr) 
  i=0
  n = n-1
  sumaDiagonal = 0
  for i in 0..n
    sumaDiagonal = sumaDiagonal+ arr[i][n]
    #puts "#{i} ---#{n}"
    n = n-1
  end
  #puts sumaDiagonal
  return sumaDiagonal
end

#puts (sumDiagonal(n,arr) - sumDiagonalInvertida(n,arr)).abs

result = diagonalDifference arr

fptr.write result
fptr.write "\n"

fptr.close()



#!/bin/ruby

require 'json'
require 'stringio'



n = gets.strip.to_i

a = gets.rstrip.split.map(&:to_i)

# Write your code here
=begin
if list.size <=1
    puts "Array is sorted in #{j} swaps."
    puts "First Element: #{list[0]}"
    puts "Last Element: #{list[-1]}"
    return list
end

l = a.size-2
puts "list.size-2 = #{l}"
0.upto(l) do |i|
    puts i
end
=end

def bubble_sort(list)
    
    return list if list.size <= 1 # already sorted
    swapped = true
    j=0
    while swapped do
      swapped = false
      0.upto(list.size-2) do |i|
        if list[i] > list[i+1]
          list[i], list[i+1] = list[i+1], list[i] # swap values
          swapped = true
          j=j+1  
        end
      end
    end
    puts "Array is sorted in #{j} swaps."
    puts "First Element: #{list[0]}"
    puts "Last Element: #{list[-1]}"
    list
end
puts bubble_sort(a)




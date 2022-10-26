#!/bin/ruby

require 'json'
require 'stringio'

n = gets.strip.to_i

n = n.to_s(2)
n = n.chars
#puts n
temp = 0
flag = 0
count = 0
arr = []
i=0

n.each do |n|
    if n.to_i == 1
        count += 1
    end
    if n.to_i == 0
        flag += 1  
        count = 0
    end
    arr[flag] = count
end
resultado = arr.max()
puts resultado





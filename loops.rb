#!/bin/ruby

require 'json'
require 'stringio'



n = gets.strip.to_i

i=0
while(i<10)
    i += 1
    puts "#{n} x #{i} = #{n*i} "
end

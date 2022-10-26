#!/bin/ruby

require 'json'
require 'stringio'



N = gets.strip.to_i

if ( N%2!=0)
    puts("Weird")
end
if(N%2==0 && N>=2 && N<=5)
    puts("not weird")
elsif(N%2==0 && N>=6 && N<=20)
    puts("Weird")
elsif(N%2==0 && N>20)
    puts("not weird")
end
#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'flippingBits' function below.
#
# The function is expected to return a LONG_INTEGER.
# The function accepts LONG_INTEGER n as parameter.
#

def flippingBits(n)
    # Write your code here
    #numero = 9
    bits = 31
    bin = n
    mbin = ~bin
    
    bin_original = bits.downto(0).map { |i| bin[i] }.join  
    #puts bin_original.class
    #puts bin_original.to_i(2)
    bin_invertido = bits.downto(0).map { |i| mbin[i] }.join
    bin_invertido_decimal = bin_invertido.to_i(2)
    #puts bin_invertido.class
    #puts bin_invertido.to_i(2)
    
    #puts bin_original.to_i(2)
    #puts "#{bin_original}"
    #puts "#{bin_invertido}"
    puts "#{bin_invertido_decimal}"

end

fptr = File.open("nota", 'w')

q = gets.strip.to_i

q.times do |q_itr|
    n = gets.strip.to_i

    result = flippingBits n

    fptr.write result
    fptr.write "\n"
end

fptr.close()





#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'bitwiseAnd' function below.
#
# The function is expected to return an INTEGER.
# The function accepts following parameters:
#  1. INTEGER N
#  2. INTEGER K
#

def bitwiseAnd(n, k)
    # Write your code here
    s = []
    sbin=[]
    result = 0
    i=0
    #p "n: #{n}"
    #p "k: #{k}" 
    n.times do |i|
        s.push(i+1)
    end
    while i<s.length
        sbin.push(s[i].to_s(2))
        i+=1
    end
    j=0
    temp=[]
    p sbin.length
    p sbin
    sbin[0...sbin.length].each_with_index do |e, i|
        sbin[i+1...sbin.length].each do |j|
            #p "#{e}-#{j}"
            temp.push(e.to_i(2) & j.to_i(2))
        end
    end
    p temp
    max=0
    p k
    max = temp[0]
    temp.each do |t|
        if t<k
            if t > max
                max = t
            end
        end
    end
    p max
    #p s
    #p sbin
    #p "#{s[0].to_s(2).to_i(2)} -- #{s[0].to_s(2)}"
    #p "#{s[1].to_s(2).to_i(2)} -- #{s[1].to_s(2)}"
    #p s[0].to_s(2).to_i(2) & s[1].to_s(2).to_i(2)
    



end

fptr = File.open("nota.txt", 'w')

t = gets.strip.to_i

t.times do |t_itr|
    first_multiple_input = gets.rstrip.split

    count = first_multiple_input[0].to_i

    lim = first_multiple_input[1].to_i

    res = bitwiseAnd count, lim

    fptr.write res
    fptr.write "\n"
end

fptr.close()
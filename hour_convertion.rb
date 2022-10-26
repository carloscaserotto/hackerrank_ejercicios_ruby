#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'timeConversion' function below.
#
# The function is expected to return a STRING.
# The function accepts STRING s as parameter.

def timeConversion(s)
    # Write your code here
    
    hour = s[-2..-1]
    horario = s.split(":")
    

    if hour == "PM" || hour == "pm"
        if horario[0] == "12"
            military_hour = horario[0]+":"+horario[1]+":"+horario[2][0..1]
            puts military_hour
        elsif
            temp = horario[0].to_i
            temp = temp + 12
            horario[0] = temp.to_s
            military_hour = horario[0]+":"+horario[1]+":"+horario[2][0..1]
            puts horario[0]+":"+horario[1]+":"+horario[2][0..1]
        end
    end
    if hour == "AM" || hour == "am"
        if horario[0] == "12"
            military_hour ="00"+":"+horario[1]+":"+horario[2][0..1]
            puts "00"+":"+horario[1]+":"+horario[2][0..1]
        elsif military_hour =horario[0]+":"+horario[1]+":"+horario[2][0..1]
            puts horario[0]+":"+horario[1]+":"+horario[2][0..1]
        end
    end
    military_hour
end
dir = File.expand_path(File.join(File.dirname(__FILE__), '..', 'file.txt'))
fptr = File.open(dir, 'w')

s = gets.chomp

result = timeConversion s

fptr.write result
fptr.write "\n"

fptr.close()


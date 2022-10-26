#!/bin/ruby

require 'json'
require 'stringio'
#gmail = /\w+@+[gmail]\w+\.+[a-z]*/
gmail = Regexp.new '@gmail.com'

first_multiple_input=[]
firstName = []
emailID = []
matches = []

N = gets.strip.to_i

N.times do |i|
    first_multiple_input[i] = gets.rstrip.split
    firstName[i] = first_multiple_input[i][0]
    emailID[i] = first_multiple_input[i][1]
end
index = 0
#emailID.each_with_index do |email, idx|
    #p "#{email} - #{idx}"
#    if email.match(gmail)
#        matches.push(email)
#    end
#end
fin =0
while fin < first_multiple_input.length()
    #p first_multiple_input[fin]
    if first_multiple_input[fin][1].match(gmail)
        matches.push(first_multiple_input[fin][0])
    end
    fin +=1
end
matches = matches.sort
matches.each do |m|
    puts m
end
#p first_multiple_input
#p firstName
#p emailID



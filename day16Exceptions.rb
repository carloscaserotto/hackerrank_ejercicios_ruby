#!/bin/ruby

require 'json'
require 'stringio'


S = gets.chomp
begin
    #raise
      # block where exception raise
      s = Integer(S)

    rescue ArgumentError
      # block where exception rescue
      puts 'Bad String'
    else
      puts s
end

=begin
begin
    raise if !(s = Integer(S))
    rescue  
        # inspecting the raised exception
        puts "Bad String"
    else
        puts s
end 
=begin
begin  
    if !(s=Integer(S))
        raise 'I am the error message!'  
    end
rescue => e  
    # inspecting the raised exception
    puts e.message

    # information about where the exception was raised  
    #puts e.backtrace.inspect  
end

=begin
begin
    #... process, may raise an exception
    s = Integer(S)
rescue => ArgumentErrorerror
    #... error handler
    puts "Bad String"
else
    puts s
end

=begin
begin
    #... process, may raise an exception
    s = Integer(S)
rescue => error
    #... error handler
    puts "I received an exception: #{error}"
else
    puts s
end


begin
    #... process, may raise an exception
    s = Integer(S)
rescue 
    #... error handler
    puts "pls insert a number"
else
    puts s
end

=begin
begin
    IO.readlines('input.txt').each { |line| values << Float(line) } 
rescue => error
    p error.message
end
=end
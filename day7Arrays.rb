#!/bin/ruby

require 'json'
require 'stringio'



n = gets.strip.to_i

arr = gets.rstrip.split.map(&:to_i)

$stdout.print arr.reverse().join(" ")
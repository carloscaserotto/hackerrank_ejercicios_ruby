#!/bin/ruby

require 'json'
require 'stringio'


arr = Array.new(6)

6.times do |i|
    arr[i] = gets.rstrip.split.map(&:to_i)
end
#!/bin/ruby

require 'json'
require 'stringio'


sumar_uno = Array.new(0)
sumar_dos = Array.new(0)
sumar_tres = Array.new(0)
sumar_cuatro = Array.new(0)
sumar = Array.new(0)

i=0
while i<4
    sumar_uno[i] = arr[0][i]+arr[0][i+1]+arr[0][i+2]+arr[1][i+1]+
                        arr[2][i]+arr[2][i+1]+arr[2][i+2]
    i +=1
end

j=0
while j<4
    sumar_dos[j] = arr[1][j]+arr[1][j+1]+arr[1][j+2]+arr[2][j+1]+
                   arr[3][j]+arr[3][j+1]+arr[3][j+2]
    j +=1
end

k=0
while k<4
    sumar_tres[k] = arr[2][k]+arr[2][k+1]+arr[2][k+2]+arr[3][k+1]+
                   arr[4][k]+arr[4][k+1]+arr[4][k+2]
    k +=1
end

l=0
while l<4
    sumar_cuatro[l] = arr[3][l]+arr[3][l+1]+arr[3][l+2]+arr[4][l+1]+
                   arr[5][l]+arr[5][l+1]+arr[5][l+2]
    l +=1
end
#puts "#{sumar_uno}"
#puts "#{sumar_dos}"
#puts "#{sumar_tres}"
#puts "#{sumar_cuatro}"

sumar = sumar_uno+sumar_dos+sumar_tres+sumar_cuatro
puts "#{sumar.max()}"



#!/bin/ruby
=begin
require 'json'
require 'stringio'



arr = Array.new(0)
arr[0] = ("1 1 1 0 0 0").rstrip.split.map(&:to_i)
arr[1] = ("0 1 0 0 0 0").rstrip.split.map(&:to_i)
arr[2] = ("1 1 1 0 0 0").rstrip.split.map(&:to_i)
arr[3] = ("0 0 2 4 4 0").rstrip.split.map(&:to_i)
arr[4] = ("0 0 0 2 0 0").rstrip.split.map(&:to_i)
arr[5] = ("0 0 1 2 4 0").rstrip.split.map(&:to_i)

#puts "#{arr} -- #{arr[0]}--#{arr[0][0]}"


sumar_uno = Array.new(0)
sumar_dos = Array.new(0)
sumar_tres = Array.new(0)
sumar_cuatro = Array.new(0)
sumar = Array.new(0)

i=0
while i<4
    sumar_uno[i] = arr[0][i]+arr[0][i+1]+arr[0][i+2]+arr[1][i+1]+
                        arr[2][i]+arr[2][i+1]+arr[2][i+2]
    i +=1
end

j=0
while j<4
    sumar_dos[j] = arr[1][j]+arr[1][j+1]+arr[1][j+2]+arr[2][j+1]+
                   arr[3][j]+arr[3][j+1]+arr[3][j+2]
    j +=1
end

k=0
while k<4
    sumar_tres[k] = arr[2][k]+arr[2][k+1]+arr[2][k+2]+arr[3][k+1]+
                   arr[4][k]+arr[4][k+1]+arr[4][k+2]
    k +=1
end

l=0
while l<4
    sumar_cuatro[l] = arr[3][l]+arr[3][l+1]+arr[3][l+2]+arr[4][l+1]+
                   arr[5][l]+arr[5][l+1]+arr[5][l+2]
    l +=1
end
puts "#{sumar_uno}"
puts "#{sumar_dos}"
puts "#{sumar_tres}"
puts "#{sumar_cuatro}"

sumar = sumar_uno+sumar_dos+sumar_tres+sumar_cuatro
puts "#{sumar.max()}"
=begin
no logro que funcione
m = 0
n = 0
while m<4
    while n<4
        sumar[m].push(arr[m][n]+arr[m][n+1]+arr[m][n+2]+arr[m+1][n+1]+
                   arr[m+2][l]+arr[m+2][n+1]+arr[m+2][n+2])
        n +=1
    end
    m +=1
end
puts "#{sumar}"
hasta aca---------------------------





arr = Array.new(6)

6.times do |i|
    arr[i] = gets.rstrip.split.map(&:to_i)
end
i=0
j=0
suma_1 =Array.new(0)
while i < 3
    suma_1[0] = suma_1[0] + arr[0,i]
    i +=1
end

puts suma_1

=end

